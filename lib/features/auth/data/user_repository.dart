import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_constants.dart';
import '../../../shared/models/user.dart';

/// Provider for Firestore instance
final firestoreProvider = Provider<FirebaseFirestore>((ref) {
  return FirebaseFirestore.instance;
});

/// User repository for handling Firestore user operations
class UserRepository {
  final FirebaseFirestore _firestore;

  UserRepository(this._firestore);

  /// Collection reference for users
  CollectionReference<Map<String, dynamic>> get _usersCollection =>
      _firestore.collection('users');

  /// Create or update user profile in Firestore
  Future<void> createUserProfile({
    required String userId,
    required String email,
    required String displayName,
    String? profileImageUrl,
  }) async {
    try {
      final initials = displayName
          .split(' ')
          .map((e) => e.isNotEmpty ? e[0] : '')
          .take(2)
          .join()
          .toUpperCase();
      final avatarUrl =
          profileImageUrl ??
          '${AppConstants.placeholderAvatarUrl}?text=$initials';
      final handle = email.split('@').first;

      await _usersCollection.doc(userId).set({
        'id': userId,
        'email': email,
        'name': displayName,
        'handle': handle,
        'avatarUrl': avatarUrl,
        'bio': '',
        'isPrivate': false,
        'isVerified': false,
        'subscriptionTier': 'free',
        'raceTypes': [],
        'raceCardImageUrls': [],
        'followerCount': 0,
        'followingCount': 0,
        'garagePhotos': [],
      });
    } on FirebaseException catch (e) {
      throw 'Failed to create user profile: ${e.message}';
    }
  }

  /// Get user profile by ID
  Future<User?> getUserProfile(String userId) async {
    try {
      final doc = await _usersCollection.doc(userId).get();
      if (!doc.exists) return null;

      final data = doc.data()!;
      return User.fromJson(data);
    } on FirebaseException catch (e) {
      throw 'Failed to get user profile: ${e.message}';
    }
  }

  /// Stream user profile by ID
  Stream<User?> streamUserProfile(String userId) {
    return _usersCollection.doc(userId).snapshots().map((doc) {
      if (!doc.exists) return null;

      final data = doc.data()!;
      return User.fromJson(data);
    });
  }

  /// Update user profile
  Future<void> updateUserProfile({
    required String userId,
    String? name,
    String? bio,
    String? avatarUrl,
    String? coverUrl,
    String? location,
  }) async {
    try {
      final updates = <String, dynamic>{};
      if (name != null) updates['name'] = name;
      if (bio != null) updates['bio'] = bio;
      if (avatarUrl != null) updates['avatarUrl'] = avatarUrl;
      if (coverUrl != null) updates['coverUrl'] = coverUrl;
      if (location != null) updates['location'] = location;

      await _usersCollection.doc(userId).update(updates);
    } on FirebaseException catch (e) {
      throw 'Failed to update user profile: ${e.message}';
    }
  }

  /// Delete user profile
  Future<void> deleteUserProfile(String userId) async {
    try {
      await _usersCollection.doc(userId).delete();
    } on FirebaseException catch (e) {
      throw 'Failed to delete user profile: ${e.message}';
    }
  }
}

/// Provider for UserRepository
final userRepositoryProvider = Provider<UserRepository>((ref) {
  return UserRepository(ref.watch(firestoreProvider));
});
