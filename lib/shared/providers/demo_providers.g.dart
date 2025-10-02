// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'demo_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentUserHash() => r'8d8b42f2800c0e884426c2f9f5a7a5202dc9e1a2';

/// See also [currentUser].
@ProviderFor(currentUser)
final currentUserProvider = AutoDisposeProvider<User?>.internal(
  currentUser,
  name: r'currentUserProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentUserHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CurrentUserRef = AutoDisposeProviderRef<User?>;
String _$userPostsHash() => r'7003d360bf930cb8a790ecc623376d00a2e1af92';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [userPosts].
@ProviderFor(userPosts)
const userPostsProvider = UserPostsFamily();

/// See also [userPosts].
class UserPostsFamily extends Family<List<Post>> {
  /// See also [userPosts].
  const UserPostsFamily();

  /// See also [userPosts].
  UserPostsProvider call(String userId) {
    return UserPostsProvider(userId);
  }

  @override
  UserPostsProvider getProviderOverride(covariant UserPostsProvider provider) {
    return call(provider.userId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'userPostsProvider';
}

/// See also [userPosts].
class UserPostsProvider extends AutoDisposeProvider<List<Post>> {
  /// See also [userPosts].
  UserPostsProvider(String userId)
    : this._internal(
        (ref) => userPosts(ref as UserPostsRef, userId),
        from: userPostsProvider,
        name: r'userPostsProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$userPostsHash,
        dependencies: UserPostsFamily._dependencies,
        allTransitiveDependencies: UserPostsFamily._allTransitiveDependencies,
        userId: userId,
      );

  UserPostsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final String userId;

  @override
  Override overrideWith(List<Post> Function(UserPostsRef provider) create) {
    return ProviderOverride(
      origin: this,
      override: UserPostsProvider._internal(
        (ref) => create(ref as UserPostsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<List<Post>> createElement() {
    return _UserPostsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserPostsProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UserPostsRef on AutoDisposeProviderRef<List<Post>> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _UserPostsProviderElement extends AutoDisposeProviderElement<List<Post>>
    with UserPostsRef {
  _UserPostsProviderElement(super.provider);

  @override
  String get userId => (origin as UserPostsProvider).userId;
}

String _$userClubsHash() => r'069496869e8a5dbd0e482cadc275d98555ec702c';

/// See also [userClubs].
@ProviderFor(userClubs)
const userClubsProvider = UserClubsFamily();

/// See also [userClubs].
class UserClubsFamily extends Family<List<Club>> {
  /// See also [userClubs].
  const UserClubsFamily();

  /// See also [userClubs].
  UserClubsProvider call(String userId) {
    return UserClubsProvider(userId);
  }

  @override
  UserClubsProvider getProviderOverride(covariant UserClubsProvider provider) {
    return call(provider.userId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'userClubsProvider';
}

/// See also [userClubs].
class UserClubsProvider extends AutoDisposeProvider<List<Club>> {
  /// See also [userClubs].
  UserClubsProvider(String userId)
    : this._internal(
        (ref) => userClubs(ref as UserClubsRef, userId),
        from: userClubsProvider,
        name: r'userClubsProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$userClubsHash,
        dependencies: UserClubsFamily._dependencies,
        allTransitiveDependencies: UserClubsFamily._allTransitiveDependencies,
        userId: userId,
      );

  UserClubsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final String userId;

  @override
  Override overrideWith(List<Club> Function(UserClubsRef provider) create) {
    return ProviderOverride(
      origin: this,
      override: UserClubsProvider._internal(
        (ref) => create(ref as UserClubsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<List<Club>> createElement() {
    return _UserClubsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserClubsProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UserClubsRef on AutoDisposeProviderRef<List<Club>> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _UserClubsProviderElement extends AutoDisposeProviderElement<List<Club>>
    with UserClubsRef {
  _UserClubsProviderElement(super.provider);

  @override
  String get userId => (origin as UserClubsProvider).userId;
}

String _$userEventsHash() => r'68210878b35c6459eacede38b45501644eed502c';

/// See also [userEvents].
@ProviderFor(userEvents)
const userEventsProvider = UserEventsFamily();

/// See also [userEvents].
class UserEventsFamily extends Family<List<Event>> {
  /// See also [userEvents].
  const UserEventsFamily();

  /// See also [userEvents].
  UserEventsProvider call(String userId) {
    return UserEventsProvider(userId);
  }

  @override
  UserEventsProvider getProviderOverride(
    covariant UserEventsProvider provider,
  ) {
    return call(provider.userId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'userEventsProvider';
}

/// See also [userEvents].
class UserEventsProvider extends AutoDisposeProvider<List<Event>> {
  /// See also [userEvents].
  UserEventsProvider(String userId)
    : this._internal(
        (ref) => userEvents(ref as UserEventsRef, userId),
        from: userEventsProvider,
        name: r'userEventsProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$userEventsHash,
        dependencies: UserEventsFamily._dependencies,
        allTransitiveDependencies: UserEventsFamily._allTransitiveDependencies,
        userId: userId,
      );

  UserEventsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final String userId;

  @override
  Override overrideWith(List<Event> Function(UserEventsRef provider) create) {
    return ProviderOverride(
      origin: this,
      override: UserEventsProvider._internal(
        (ref) => create(ref as UserEventsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<List<Event>> createElement() {
    return _UserEventsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserEventsProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UserEventsRef on AutoDisposeProviderRef<List<Event>> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _UserEventsProviderElement extends AutoDisposeProviderElement<List<Event>>
    with UserEventsRef {
  _UserEventsProviderElement(super.provider);

  @override
  String get userId => (origin as UserEventsProvider).userId;
}

String _$demoUsersHash() => r'7ce9584d13f9c51baf2c1b19e515393a7b9c6c1b';

/// See also [DemoUsers].
@ProviderFor(DemoUsers)
final demoUsersProvider =
    AutoDisposeNotifierProvider<DemoUsers, List<User>>.internal(
      DemoUsers.new,
      name: r'demoUsersProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$demoUsersHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$DemoUsers = AutoDisposeNotifier<List<User>>;
String _$demoPostsHash() => r'25b896e42f78ad086bb24fe17a2b4fbe684225ab';

/// See also [DemoPosts].
@ProviderFor(DemoPosts)
final demoPostsProvider =
    AutoDisposeNotifierProvider<DemoPosts, List<Post>>.internal(
      DemoPosts.new,
      name: r'demoPostsProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$demoPostsHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$DemoPosts = AutoDisposeNotifier<List<Post>>;
String _$demoClubsHash() => r'7b41114375c5716078ba1bc88a01f18a2bf0ec35';

/// See also [DemoClubs].
@ProviderFor(DemoClubs)
final demoClubsProvider =
    AutoDisposeNotifierProvider<DemoClubs, List<Club>>.internal(
      DemoClubs.new,
      name: r'demoClubsProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$demoClubsHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$DemoClubs = AutoDisposeNotifier<List<Club>>;
String _$demoEventsHash() => r'47f56d1959acfcf6de06f76fa9dba9d189b905c1';

/// See also [DemoEvents].
@ProviderFor(DemoEvents)
final demoEventsProvider =
    AutoDisposeNotifierProvider<DemoEvents, List<Event>>.internal(
      DemoEvents.new,
      name: r'demoEventsProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$demoEventsHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$DemoEvents = AutoDisposeNotifier<List<Event>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
