import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/auth/data/user_repository.dart';
import '../../features/auth/presentation/auth_controller.dart';
import '../models/user.dart';

/// Provider that streams the current user's Firestore profile
final currentUserProfileProvider = StreamProvider<User?>((ref) {
  final firebaseUser = ref.watch(currentUserProvider);

  if (firebaseUser == null) {
    return Stream.value(null);
  }

  return ref.watch(userRepositoryProvider).streamUserProfile(firebaseUser.uid);
});

/// Provider that gets the current user's profile synchronously
/// Returns null if not yet loaded or user not signed in
final currentUserProfileValueProvider = Provider<User?>((ref) {
  final profileAsync = ref.watch(currentUserProfileProvider);
  return profileAsync.maybeWhen(data: (profile) => profile, orElse: () => null);
});
