import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

import '../../features/auth/data/auth_repository.dart';
import '../../features/auth/data/user_repository.dart';
import '../models/user.dart';

/// Represents the different states of user authentication and profile loading
abstract class UserState {
  const UserState();
}

class UserStateLoading extends UserState {
  const UserStateLoading();
}

class UserStateUnauthenticated extends UserState {
  const UserStateUnauthenticated();
}

class UserStateAuthenticated extends UserState {
  final firebase_auth.User firebaseUser;
  final User profile;

  const UserStateAuthenticated({
    required this.firebaseUser,
    required this.profile,
  });
}

class UserStateAuthenticatedNoProfile extends UserState {
  final firebase_auth.User firebaseUser;

  const UserStateAuthenticatedNoProfile({required this.firebaseUser});
}

class UserStateError extends UserState {
  final String message;
  final firebase_auth.User? firebaseUser;

  const UserStateError({required this.message, this.firebaseUser});
}

/// Extension methods for UserState to make it easier to work with
extension UserStateExtension on UserState {
  /// Returns true if the user is authenticated (regardless of profile status)
  bool get isAuthenticated {
    return this is UserStateAuthenticated ||
        this is UserStateAuthenticatedNoProfile ||
        (this is UserStateError &&
            (this as UserStateError).firebaseUser != null);
  }

  /// Returns true if the user has a complete profile
  bool get hasProfile {
    return this is UserStateAuthenticated;
  }

  /// Returns the user profile if available
  User? get profile {
    if (this is UserStateAuthenticated) {
      return (this as UserStateAuthenticated).profile;
    }
    return null;
  }

  /// Returns the Firebase user if available
  firebase_auth.User? get firebaseUser {
    if (this is UserStateAuthenticated) {
      return (this as UserStateAuthenticated).firebaseUser;
    } else if (this is UserStateAuthenticatedNoProfile) {
      return (this as UserStateAuthenticatedNoProfile).firebaseUser;
    } else if (this is UserStateError) {
      return (this as UserStateError).firebaseUser;
    }
    return null;
  }

  /// Returns true if the state is loading
  bool get isLoading => this is UserStateLoading;

  /// Returns true if there's an error
  bool get hasError => this is UserStateError;

  /// Returns the error message if there's an error
  String? get errorMessage {
    if (this is UserStateError) {
      return (this as UserStateError).message;
    }
    return null;
  }
}

/// Provider that manages the complete user state including authentication and profile
final userStateProvider = StreamProvider<UserState>((ref) async* {
  // Start with loading state
  yield const UserStateLoading();

  // Listen to Firebase auth state changes
  await for (final firebaseUser in ref.watch(authStateChangesProvider.stream)) {
    if (firebaseUser == null) {
      // User is not authenticated
      yield const UserStateUnauthenticated();
      continue;
    }

    // User is authenticated, now get their profile
    try {
      final userRepository = ref.read(userRepositoryProvider);

      // Stream the user profile
      await for (final profile in userRepository.streamUserProfile(
        firebaseUser.uid,
      )) {
        if (profile == null) {
          // User is authenticated but has no profile
          yield UserStateAuthenticatedNoProfile(firebaseUser: firebaseUser);
        } else {
          // User is authenticated and has a profile
          yield UserStateAuthenticated(
            firebaseUser: firebaseUser,
            profile: profile,
          );
        }
      }
    } catch (error) {
      // Error loading profile
      yield UserStateError(
        message: 'Failed to load user profile: $error',
        firebaseUser: firebaseUser,
      );
    }
  }
});

/// Convenience provider for getting the current user state synchronously
final currentUserStateProvider = Provider<UserState>((ref) {
  final userStateAsync = ref.watch(userStateProvider);
  return userStateAsync.when(
    data: (state) => state,
    loading: () => const UserStateLoading(),
    error: (error, _) => UserStateError(message: error.toString()),
  );
});

/// Convenience provider for getting the current user profile
final currentUserProfileProvider = Provider<User?>((ref) {
  final userState = ref.watch(currentUserStateProvider);
  return userState.profile;
});

/// Convenience provider for checking if user is authenticated
final isAuthenticatedProvider = Provider<bool>((ref) {
  final userState = ref.watch(currentUserStateProvider);
  return userState.isAuthenticated;
});

/// Convenience provider for checking if user has a profile
final hasUserProfileProvider = Provider<bool>((ref) {
  final userState = ref.watch(currentUserStateProvider);
  return userState.hasProfile;
});

/// Convenience provider for checking if the app is loading user data
final isLoadingUserProvider = Provider<bool>((ref) {
  final userState = ref.watch(currentUserStateProvider);
  return userState.isLoading;
});

/// Provider for creating a user profile when one doesn't exist
final createUserProfileProvider =
    Provider<
      Future<void> Function({
        required String displayName,
        String? profileImageUrl,
      })
    >((ref) {
      return ({required String displayName, String? profileImageUrl}) async {
        final userState = ref.read(currentUserStateProvider);

        if (userState is UserStateAuthenticatedNoProfile) {
          final userRepository = ref.read(userRepositoryProvider);
          await userRepository.createUserProfile(
            userId: userState.firebaseUser.uid,
            email: userState.firebaseUser.email ?? '',
            displayName: displayName,
            profileImageUrl: profileImageUrl,
          );
        } else {
          throw Exception(
            'Cannot create profile: user is not in the correct state',
          );
        }
      };
    });
