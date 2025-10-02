import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/auth_repository.dart';
import '../data/user_repository.dart';

/// Auth controller state notifier
class AuthController extends StateNotifier<AsyncValue<User?>> {
  final AuthRepository _authRepository;
  final UserRepository _userRepository;

  AuthController(this._authRepository, this._userRepository)
    : super(const AsyncValue.loading()) {
    // Listen to auth state changes
    _authRepository.authStateChanges().listen((user) {
      state = AsyncValue.data(user);
    });
  }

  /// Sign in with email and password
  Future<void> signIn({required String email, required String password}) async {
    state = const AsyncValue.loading();
    try {
      await _authRepository.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      // State will be updated by authStateChanges listener
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }

  /// Sign up with email and password
  Future<void> signUp({
    required String email,
    required String password,
    required String displayName,
  }) async {
    state = const AsyncValue.loading();
    try {
      final userCredential = await _authRepository
          .createUserWithEmailAndPassword(email: email, password: password);

      // Create user profile in Firestore
      if (userCredential.user != null) {
        await _userRepository.createUserProfile(
          userId: userCredential.user!.uid,
          email: email,
          displayName: displayName,
        );
      }
      // State will be updated by authStateChanges listener
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }

  /// Sign out
  Future<void> signOut() async {
    try {
      await _authRepository.signOut();
      // State will be updated by authStateChanges listener
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }

  /// Send password reset email
  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await _authRepository.sendPasswordResetEmail(email);
    } catch (e) {
      rethrow;
    }
  }
}

/// Provider for AuthController
final authControllerProvider =
    StateNotifierProvider<AuthController, AsyncValue<User?>>((ref) {
      return AuthController(
        ref.watch(authRepositoryProvider),
        ref.watch(userRepositoryProvider),
      );
    });

/// Provider for current user (convenience)
final currentUserProvider = Provider<User?>((ref) {
  return ref.watch(authControllerProvider).value;
});
