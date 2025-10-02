// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Club _$ClubFromJson(Map<String, dynamic> json) {
  return _Club.fromJson(json);
}

/// @nodoc
mixin _$Club {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get bannerUrl => throw _privateConstructorUsedError;
  String? get bannerHint => throw _privateConstructorUsedError;
  bool get isPrivate => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;
  List<String> get memberIds => throw _privateConstructorUsedError;
  List<String> get joinRequestIds => throw _privateConstructorUsedError;
  int get memberCount => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Club to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Club
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClubCopyWith<Club> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubCopyWith<$Res> {
  factory $ClubCopyWith(Club value, $Res Function(Club) then) =
      _$ClubCopyWithImpl<$Res, Club>;
  @useResult
  $Res call({
    String id,
    String name,
    String description,
    String bannerUrl,
    String? bannerHint,
    bool isPrivate,
    String ownerId,
    List<String> memberIds,
    List<String> joinRequestIds,
    int memberCount,
    DateTime createdAt,
  });
}

/// @nodoc
class _$ClubCopyWithImpl<$Res, $Val extends Club>
    implements $ClubCopyWith<$Res> {
  _$ClubCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Club
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? bannerUrl = null,
    Object? bannerHint = freezed,
    Object? isPrivate = null,
    Object? ownerId = null,
    Object? memberIds = null,
    Object? joinRequestIds = null,
    Object? memberCount = null,
    Object? createdAt = null,
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
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            bannerUrl: null == bannerUrl
                ? _value.bannerUrl
                : bannerUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            bannerHint: freezed == bannerHint
                ? _value.bannerHint
                : bannerHint // ignore: cast_nullable_to_non_nullable
                      as String?,
            isPrivate: null == isPrivate
                ? _value.isPrivate
                : isPrivate // ignore: cast_nullable_to_non_nullable
                      as bool,
            ownerId: null == ownerId
                ? _value.ownerId
                : ownerId // ignore: cast_nullable_to_non_nullable
                      as String,
            memberIds: null == memberIds
                ? _value.memberIds
                : memberIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            joinRequestIds: null == joinRequestIds
                ? _value.joinRequestIds
                : joinRequestIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            memberCount: null == memberCount
                ? _value.memberCount
                : memberCount // ignore: cast_nullable_to_non_nullable
                      as int,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ClubImplCopyWith<$Res> implements $ClubCopyWith<$Res> {
  factory _$$ClubImplCopyWith(
    _$ClubImpl value,
    $Res Function(_$ClubImpl) then,
  ) = __$$ClubImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String description,
    String bannerUrl,
    String? bannerHint,
    bool isPrivate,
    String ownerId,
    List<String> memberIds,
    List<String> joinRequestIds,
    int memberCount,
    DateTime createdAt,
  });
}

/// @nodoc
class __$$ClubImplCopyWithImpl<$Res>
    extends _$ClubCopyWithImpl<$Res, _$ClubImpl>
    implements _$$ClubImplCopyWith<$Res> {
  __$$ClubImplCopyWithImpl(_$ClubImpl _value, $Res Function(_$ClubImpl) _then)
    : super(_value, _then);

  /// Create a copy of Club
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? bannerUrl = null,
    Object? bannerHint = freezed,
    Object? isPrivate = null,
    Object? ownerId = null,
    Object? memberIds = null,
    Object? joinRequestIds = null,
    Object? memberCount = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$ClubImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        bannerUrl: null == bannerUrl
            ? _value.bannerUrl
            : bannerUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        bannerHint: freezed == bannerHint
            ? _value.bannerHint
            : bannerHint // ignore: cast_nullable_to_non_nullable
                  as String?,
        isPrivate: null == isPrivate
            ? _value.isPrivate
            : isPrivate // ignore: cast_nullable_to_non_nullable
                  as bool,
        ownerId: null == ownerId
            ? _value.ownerId
            : ownerId // ignore: cast_nullable_to_non_nullable
                  as String,
        memberIds: null == memberIds
            ? _value._memberIds
            : memberIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        joinRequestIds: null == joinRequestIds
            ? _value._joinRequestIds
            : joinRequestIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        memberCount: null == memberCount
            ? _value.memberCount
            : memberCount // ignore: cast_nullable_to_non_nullable
                  as int,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ClubImpl implements _Club {
  const _$ClubImpl({
    required this.id,
    required this.name,
    required this.description,
    required this.bannerUrl,
    this.bannerHint,
    this.isPrivate = false,
    required this.ownerId,
    final List<String> memberIds = const [],
    final List<String> joinRequestIds = const [],
    this.memberCount = 0,
    required this.createdAt,
  }) : _memberIds = memberIds,
       _joinRequestIds = joinRequestIds;

  factory _$ClubImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClubImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String bannerUrl;
  @override
  final String? bannerHint;
  @override
  @JsonKey()
  final bool isPrivate;
  @override
  final String ownerId;
  final List<String> _memberIds;
  @override
  @JsonKey()
  List<String> get memberIds {
    if (_memberIds is EqualUnmodifiableListView) return _memberIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memberIds);
  }

  final List<String> _joinRequestIds;
  @override
  @JsonKey()
  List<String> get joinRequestIds {
    if (_joinRequestIds is EqualUnmodifiableListView) return _joinRequestIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_joinRequestIds);
  }

  @override
  @JsonKey()
  final int memberCount;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Club(id: $id, name: $name, description: $description, bannerUrl: $bannerUrl, bannerHint: $bannerHint, isPrivate: $isPrivate, ownerId: $ownerId, memberIds: $memberIds, joinRequestIds: $joinRequestIds, memberCount: $memberCount, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClubImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.bannerUrl, bannerUrl) ||
                other.bannerUrl == bannerUrl) &&
            (identical(other.bannerHint, bannerHint) ||
                other.bannerHint == bannerHint) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            const DeepCollectionEquality().equals(
              other._memberIds,
              _memberIds,
            ) &&
            const DeepCollectionEquality().equals(
              other._joinRequestIds,
              _joinRequestIds,
            ) &&
            (identical(other.memberCount, memberCount) ||
                other.memberCount == memberCount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    description,
    bannerUrl,
    bannerHint,
    isPrivate,
    ownerId,
    const DeepCollectionEquality().hash(_memberIds),
    const DeepCollectionEquality().hash(_joinRequestIds),
    memberCount,
    createdAt,
  );

  /// Create a copy of Club
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClubImplCopyWith<_$ClubImpl> get copyWith =>
      __$$ClubImplCopyWithImpl<_$ClubImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClubImplToJson(this);
  }
}

abstract class _Club implements Club {
  const factory _Club({
    required final String id,
    required final String name,
    required final String description,
    required final String bannerUrl,
    final String? bannerHint,
    final bool isPrivate,
    required final String ownerId,
    final List<String> memberIds,
    final List<String> joinRequestIds,
    final int memberCount,
    required final DateTime createdAt,
  }) = _$ClubImpl;

  factory _Club.fromJson(Map<String, dynamic> json) = _$ClubImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get bannerUrl;
  @override
  String? get bannerHint;
  @override
  bool get isPrivate;
  @override
  String get ownerId;
  @override
  List<String> get memberIds;
  @override
  List<String> get joinRequestIds;
  @override
  int get memberCount;
  @override
  DateTime get createdAt;

  /// Create a copy of Club
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClubImplCopyWith<_$ClubImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
