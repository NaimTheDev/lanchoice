// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get handle => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;
  String? get coverUrl => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get instagramUrl => throw _privateConstructorUsedError;
  bool get isPrivate => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  String? get themeColor => throw _privateConstructorUsedError;
  String get subscriptionTier => throw _privateConstructorUsedError;
  List<String> get raceTypes => throw _privateConstructorUsedError;
  List<String> get raceCardImageUrls => throw _privateConstructorUsedError;
  String? get raceCarName => throw _privateConstructorUsedError;
  String? get raceCardDescription => throw _privateConstructorUsedError;
  int get followerCount => throw _privateConstructorUsedError;
  int get followingCount => throw _privateConstructorUsedError;
  List<String> get garagePhotos => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({
    String id,
    String name,
    String handle,
    String email,
    String avatarUrl,
    String? coverUrl,
    String? bio,
    String? location,
    String? instagramUrl,
    bool isPrivate,
    bool isVerified,
    String? themeColor,
    String subscriptionTier,
    List<String> raceTypes,
    List<String> raceCardImageUrls,
    String? raceCarName,
    String? raceCardDescription,
    int followerCount,
    int followingCount,
    List<String> garagePhotos,
  });
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? handle = null,
    Object? email = null,
    Object? avatarUrl = null,
    Object? coverUrl = freezed,
    Object? bio = freezed,
    Object? location = freezed,
    Object? instagramUrl = freezed,
    Object? isPrivate = null,
    Object? isVerified = null,
    Object? themeColor = freezed,
    Object? subscriptionTier = null,
    Object? raceTypes = null,
    Object? raceCardImageUrls = null,
    Object? raceCarName = freezed,
    Object? raceCardDescription = freezed,
    Object? followerCount = null,
    Object? followingCount = null,
    Object? garagePhotos = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            handle: null == handle
                ? _value.handle
                : handle // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            avatarUrl: null == avatarUrl
                ? _value.avatarUrl
                : avatarUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            coverUrl: freezed == coverUrl
                ? _value.coverUrl
                : coverUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            bio: freezed == bio
                ? _value.bio
                : bio // ignore: cast_nullable_to_non_nullable
                      as String?,
            location: freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String?,
            instagramUrl: freezed == instagramUrl
                ? _value.instagramUrl
                : instagramUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            isPrivate: null == isPrivate
                ? _value.isPrivate
                : isPrivate // ignore: cast_nullable_to_non_nullable
                      as bool,
            isVerified: null == isVerified
                ? _value.isVerified
                : isVerified // ignore: cast_nullable_to_non_nullable
                      as bool,
            themeColor: freezed == themeColor
                ? _value.themeColor
                : themeColor // ignore: cast_nullable_to_non_nullable
                      as String?,
            subscriptionTier: null == subscriptionTier
                ? _value.subscriptionTier
                : subscriptionTier // ignore: cast_nullable_to_non_nullable
                      as String,
            raceTypes: null == raceTypes
                ? _value.raceTypes
                : raceTypes // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            raceCardImageUrls: null == raceCardImageUrls
                ? _value.raceCardImageUrls
                : raceCardImageUrls // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            raceCarName: freezed == raceCarName
                ? _value.raceCarName
                : raceCarName // ignore: cast_nullable_to_non_nullable
                      as String?,
            raceCardDescription: freezed == raceCardDescription
                ? _value.raceCardDescription
                : raceCardDescription // ignore: cast_nullable_to_non_nullable
                      as String?,
            followerCount: null == followerCount
                ? _value.followerCount
                : followerCount // ignore: cast_nullable_to_non_nullable
                      as int,
            followingCount: null == followingCount
                ? _value.followingCount
                : followingCount // ignore: cast_nullable_to_non_nullable
                      as int,
            garagePhotos: null == garagePhotos
                ? _value.garagePhotos
                : garagePhotos // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
    _$UserImpl value,
    $Res Function(_$UserImpl) then,
  ) = __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String handle,
    String email,
    String avatarUrl,
    String? coverUrl,
    String? bio,
    String? location,
    String? instagramUrl,
    bool isPrivate,
    bool isVerified,
    String? themeColor,
    String subscriptionTier,
    List<String> raceTypes,
    List<String> raceCardImageUrls,
    String? raceCarName,
    String? raceCardDescription,
    int followerCount,
    int followingCount,
    List<String> garagePhotos,
  });
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
    : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? handle = null,
    Object? email = null,
    Object? avatarUrl = null,
    Object? coverUrl = freezed,
    Object? bio = freezed,
    Object? location = freezed,
    Object? instagramUrl = freezed,
    Object? isPrivate = null,
    Object? isVerified = null,
    Object? themeColor = freezed,
    Object? subscriptionTier = null,
    Object? raceTypes = null,
    Object? raceCardImageUrls = null,
    Object? raceCarName = freezed,
    Object? raceCardDescription = freezed,
    Object? followerCount = null,
    Object? followingCount = null,
    Object? garagePhotos = null,
  }) {
    return _then(
      _$UserImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        handle: null == handle
            ? _value.handle
            : handle // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        avatarUrl: null == avatarUrl
            ? _value.avatarUrl
            : avatarUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        coverUrl: freezed == coverUrl
            ? _value.coverUrl
            : coverUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        bio: freezed == bio
            ? _value.bio
            : bio // ignore: cast_nullable_to_non_nullable
                  as String?,
        location: freezed == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String?,
        instagramUrl: freezed == instagramUrl
            ? _value.instagramUrl
            : instagramUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        isPrivate: null == isPrivate
            ? _value.isPrivate
            : isPrivate // ignore: cast_nullable_to_non_nullable
                  as bool,
        isVerified: null == isVerified
            ? _value.isVerified
            : isVerified // ignore: cast_nullable_to_non_nullable
                  as bool,
        themeColor: freezed == themeColor
            ? _value.themeColor
            : themeColor // ignore: cast_nullable_to_non_nullable
                  as String?,
        subscriptionTier: null == subscriptionTier
            ? _value.subscriptionTier
            : subscriptionTier // ignore: cast_nullable_to_non_nullable
                  as String,
        raceTypes: null == raceTypes
            ? _value._raceTypes
            : raceTypes // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        raceCardImageUrls: null == raceCardImageUrls
            ? _value._raceCardImageUrls
            : raceCardImageUrls // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        raceCarName: freezed == raceCarName
            ? _value.raceCarName
            : raceCarName // ignore: cast_nullable_to_non_nullable
                  as String?,
        raceCardDescription: freezed == raceCardDescription
            ? _value.raceCardDescription
            : raceCardDescription // ignore: cast_nullable_to_non_nullable
                  as String?,
        followerCount: null == followerCount
            ? _value.followerCount
            : followerCount // ignore: cast_nullable_to_non_nullable
                  as int,
        followingCount: null == followingCount
            ? _value.followingCount
            : followingCount // ignore: cast_nullable_to_non_nullable
                  as int,
        garagePhotos: null == garagePhotos
            ? _value._garagePhotos
            : garagePhotos // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl({
    required this.id,
    required this.name,
    required this.handle,
    required this.email,
    required this.avatarUrl,
    this.coverUrl,
    this.bio,
    this.location,
    this.instagramUrl,
    this.isPrivate = false,
    this.isVerified = false,
    this.themeColor,
    this.subscriptionTier = 'free',
    final List<String> raceTypes = const [],
    final List<String> raceCardImageUrls = const [],
    this.raceCarName,
    this.raceCardDescription,
    this.followerCount = 0,
    this.followingCount = 0,
    final List<String> garagePhotos = const [],
  }) : _raceTypes = raceTypes,
       _raceCardImageUrls = raceCardImageUrls,
       _garagePhotos = garagePhotos;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String handle;
  @override
  final String email;
  @override
  final String avatarUrl;
  @override
  final String? coverUrl;
  @override
  final String? bio;
  @override
  final String? location;
  @override
  final String? instagramUrl;
  @override
  @JsonKey()
  final bool isPrivate;
  @override
  @JsonKey()
  final bool isVerified;
  @override
  final String? themeColor;
  @override
  @JsonKey()
  final String subscriptionTier;
  final List<String> _raceTypes;
  @override
  @JsonKey()
  List<String> get raceTypes {
    if (_raceTypes is EqualUnmodifiableListView) return _raceTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_raceTypes);
  }

  final List<String> _raceCardImageUrls;
  @override
  @JsonKey()
  List<String> get raceCardImageUrls {
    if (_raceCardImageUrls is EqualUnmodifiableListView)
      return _raceCardImageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_raceCardImageUrls);
  }

  @override
  final String? raceCarName;
  @override
  final String? raceCardDescription;
  @override
  @JsonKey()
  final int followerCount;
  @override
  @JsonKey()
  final int followingCount;
  final List<String> _garagePhotos;
  @override
  @JsonKey()
  List<String> get garagePhotos {
    if (_garagePhotos is EqualUnmodifiableListView) return _garagePhotos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_garagePhotos);
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name, handle: $handle, email: $email, avatarUrl: $avatarUrl, coverUrl: $coverUrl, bio: $bio, location: $location, instagramUrl: $instagramUrl, isPrivate: $isPrivate, isVerified: $isVerified, themeColor: $themeColor, subscriptionTier: $subscriptionTier, raceTypes: $raceTypes, raceCardImageUrls: $raceCardImageUrls, raceCarName: $raceCarName, raceCardDescription: $raceCardDescription, followerCount: $followerCount, followingCount: $followingCount, garagePhotos: $garagePhotos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.handle, handle) || other.handle == handle) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.coverUrl, coverUrl) ||
                other.coverUrl == coverUrl) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.instagramUrl, instagramUrl) ||
                other.instagramUrl == instagramUrl) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.themeColor, themeColor) ||
                other.themeColor == themeColor) &&
            (identical(other.subscriptionTier, subscriptionTier) ||
                other.subscriptionTier == subscriptionTier) &&
            const DeepCollectionEquality().equals(
              other._raceTypes,
              _raceTypes,
            ) &&
            const DeepCollectionEquality().equals(
              other._raceCardImageUrls,
              _raceCardImageUrls,
            ) &&
            (identical(other.raceCarName, raceCarName) ||
                other.raceCarName == raceCarName) &&
            (identical(other.raceCardDescription, raceCardDescription) ||
                other.raceCardDescription == raceCardDescription) &&
            (identical(other.followerCount, followerCount) ||
                other.followerCount == followerCount) &&
            (identical(other.followingCount, followingCount) ||
                other.followingCount == followingCount) &&
            const DeepCollectionEquality().equals(
              other._garagePhotos,
              _garagePhotos,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    name,
    handle,
    email,
    avatarUrl,
    coverUrl,
    bio,
    location,
    instagramUrl,
    isPrivate,
    isVerified,
    themeColor,
    subscriptionTier,
    const DeepCollectionEquality().hash(_raceTypes),
    const DeepCollectionEquality().hash(_raceCardImageUrls),
    raceCarName,
    raceCardDescription,
    followerCount,
    followingCount,
    const DeepCollectionEquality().hash(_garagePhotos),
  ]);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(this);
  }
}

abstract class _User implements User {
  const factory _User({
    required final String id,
    required final String name,
    required final String handle,
    required final String email,
    required final String avatarUrl,
    final String? coverUrl,
    final String? bio,
    final String? location,
    final String? instagramUrl,
    final bool isPrivate,
    final bool isVerified,
    final String? themeColor,
    final String subscriptionTier,
    final List<String> raceTypes,
    final List<String> raceCardImageUrls,
    final String? raceCarName,
    final String? raceCardDescription,
    final int followerCount,
    final int followingCount,
    final List<String> garagePhotos,
  }) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get handle;
  @override
  String get email;
  @override
  String get avatarUrl;
  @override
  String? get coverUrl;
  @override
  String? get bio;
  @override
  String? get location;
  @override
  String? get instagramUrl;
  @override
  bool get isPrivate;
  @override
  bool get isVerified;
  @override
  String? get themeColor;
  @override
  String get subscriptionTier;
  @override
  List<String> get raceTypes;
  @override
  List<String> get raceCardImageUrls;
  @override
  String? get raceCarName;
  @override
  String? get raceCardDescription;
  @override
  int get followerCount;
  @override
  int get followingCount;
  @override
  List<String> get garagePhotos;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
