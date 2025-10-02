import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/user.dart';
import '../models/post.dart';
import '../models/club.dart';
import '../models/event.dart';
import '../models/comment.dart';
import '../data/demo_data.dart';
import './user_profile_provider.dart';

part 'demo_providers.g.dart';

// Current User Provider - now uses real Firebase user
// Note: This returns the demo user as fallback if no Firebase user is available
@riverpod
User currentUser(CurrentUserRef ref) {
  // Get the real user from Firebase
  final realUser = ref.watch(currentUserProfileValueProvider);

  // If we have a real user, return it; otherwise return the demo user as fallback
  return realUser ?? DemoData.currentUser;
}

// Users Provider
@riverpod
class DemoUsers extends _$DemoUsers {
  @override
  List<User> build() {
    return DemoData.users;
  }

  void updateUser(User user) {
    state = state.map((u) => u.id == user.id ? user : u).toList();
  }

  User? getUserById(String id) {
    try {
      return state.firstWhere((user) => user.id == id);
    } catch (e) {
      return null;
    }
  }
}

// Posts Provider
@riverpod
class DemoPosts extends _$DemoPosts {
  @override
  List<Post> build() {
    return List.from(DemoData.posts)
      ..sort((a, b) => b.createdAt.compareTo(a.createdAt));
  }

  void likePost(String postId, String userId) {
    state = state.map((post) {
      if (post.id == postId) {
        final isLiked = post.likedBy.contains(userId);
        return post.copyWith(
          likes: isLiked ? post.likes - 1 : post.likes + 1,
          likedBy: isLiked
              ? post.likedBy.where((id) => id != userId).toList()
              : [...post.likedBy, userId],
        );
      }
      return post;
    }).toList();
  }

  void addComment(String postId, Comment comment) {
    state = state.map((post) {
      if (post.id == postId) {
        return post.copyWith(comments: [...post.comments, comment]);
      }
      return post;
    }).toList();
  }

  void addPost(Post post) {
    state = [post, ...state];
  }

  Post? getPostById(String id) {
    try {
      return state.firstWhere((post) => post.id == id);
    } catch (e) {
      return null;
    }
  }
}

// Clubs Provider
@riverpod
class DemoClubs extends _$DemoClubs {
  @override
  List<Club> build() {
    return List.from(DemoData.clubs)
      ..sort((a, b) => b.createdAt.compareTo(a.createdAt));
  }

  void joinClub(String clubId, String userId) {
    state = state.map((club) {
      if (club.id == clubId && !club.memberIds.contains(userId)) {
        return club.copyWith(
          memberIds: [...club.memberIds, userId],
          memberCount: club.memberCount + 1,
        );
      }
      return club;
    }).toList();
  }

  void leaveClub(String clubId, String userId) {
    state = state.map((club) {
      if (club.id == clubId && club.memberIds.contains(userId)) {
        return club.copyWith(
          memberIds: club.memberIds.where((id) => id != userId).toList(),
          memberCount: club.memberCount - 1,
        );
      }
      return club;
    }).toList();
  }

  void requestToJoin(String clubId, String userId) {
    state = state.map((club) {
      if (club.id == clubId && !club.joinRequestIds.contains(userId)) {
        return club.copyWith(joinRequestIds: [...club.joinRequestIds, userId]);
      }
      return club;
    }).toList();
  }

  Club? getClubById(String id) {
    try {
      return state.firstWhere((club) => club.id == id);
    } catch (e) {
      return null;
    }
  }
}

// Events Provider
@riverpod
class DemoEvents extends _$DemoEvents {
  @override
  List<Event> build() {
    return List.from(DemoData.events)
      ..sort((a, b) => b.createdAt.compareTo(a.createdAt));
  }

  void rsvpEvent(String eventId, String userId) {
    state = state.map((event) {
      if (event.id == eventId) {
        final isAttending = event.attendeeIds.contains(userId);
        return event.copyWith(
          attendeeIds: isAttending
              ? event.attendeeIds.where((id) => id != userId).toList()
              : [...event.attendeeIds, userId],
          attendeeCount: isAttending
              ? event.attendeeCount - 1
              : event.attendeeCount + 1,
        );
      }
      return event;
    }).toList();
  }

  Event? getEventById(String id) {
    try {
      return state.firstWhere((event) => event.id == id);
    } catch (e) {
      return null;
    }
  }
}

// Helper providers for specific data
@riverpod
List<Post> userPosts(UserPostsRef ref, String userId) {
  final posts = ref.watch(demoPostsProvider);
  return posts.where((post) => post.author.id == userId).toList();
}

@riverpod
List<Club> userClubs(UserClubsRef ref, String userId) {
  final clubs = ref.watch(demoClubsProvider);
  return clubs.where((club) => club.memberIds.contains(userId)).toList();
}

@riverpod
List<Event> userEvents(UserEventsRef ref, String userId) {
  final events = ref.watch(demoEventsProvider);
  return events.where((event) => event.attendeeIds.contains(userId)).toList();
}
