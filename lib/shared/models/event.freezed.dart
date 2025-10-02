// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Event _$EventFromJson(Map<String, dynamic> json) {
  return _Event.fromJson(json);
}

/// @nodoc
mixin _$Event {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get coverUrl => throw _privateConstructorUsedError;
  String? get coverHint => throw _privateConstructorUsedError;
  List<String> get attendeeIds => throw _privateConstructorUsedError;
  int get attendeeCount => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Event to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventCopyWith<Event> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res, Event>;
  @useResult
  $Res call({
    String id,
    String name,
    String date,
    String location,
    String description,
    String coverUrl,
    String? coverHint,
    List<String> attendeeIds,
    int attendeeCount,
    DateTime createdAt,
  });
}

/// @nodoc
class _$EventCopyWithImpl<$Res, $Val extends Event>
    implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? date = null,
    Object? location = null,
    Object? description = null,
    Object? coverUrl = null,
    Object? coverHint = freezed,
    Object? attendeeIds = null,
    Object? attendeeCount = null,
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
            date: null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String,
            location: null == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            coverUrl: null == coverUrl
                ? _value.coverUrl
                : coverUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            coverHint: freezed == coverHint
                ? _value.coverHint
                : coverHint // ignore: cast_nullable_to_non_nullable
                      as String?,
            attendeeIds: null == attendeeIds
                ? _value.attendeeIds
                : attendeeIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            attendeeCount: null == attendeeCount
                ? _value.attendeeCount
                : attendeeCount // ignore: cast_nullable_to_non_nullable
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
abstract class _$$EventImplCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$$EventImplCopyWith(
    _$EventImpl value,
    $Res Function(_$EventImpl) then,
  ) = __$$EventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String date,
    String location,
    String description,
    String coverUrl,
    String? coverHint,
    List<String> attendeeIds,
    int attendeeCount,
    DateTime createdAt,
  });
}

/// @nodoc
class __$$EventImplCopyWithImpl<$Res>
    extends _$EventCopyWithImpl<$Res, _$EventImpl>
    implements _$$EventImplCopyWith<$Res> {
  __$$EventImplCopyWithImpl(
    _$EventImpl _value,
    $Res Function(_$EventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? date = null,
    Object? location = null,
    Object? description = null,
    Object? coverUrl = null,
    Object? coverHint = freezed,
    Object? attendeeIds = null,
    Object? attendeeCount = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$EventImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String,
        location: null == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        coverUrl: null == coverUrl
            ? _value.coverUrl
            : coverUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        coverHint: freezed == coverHint
            ? _value.coverHint
            : coverHint // ignore: cast_nullable_to_non_nullable
                  as String?,
        attendeeIds: null == attendeeIds
            ? _value._attendeeIds
            : attendeeIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        attendeeCount: null == attendeeCount
            ? _value.attendeeCount
            : attendeeCount // ignore: cast_nullable_to_non_nullable
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
class _$EventImpl implements _Event {
  const _$EventImpl({
    required this.id,
    required this.name,
    required this.date,
    required this.location,
    required this.description,
    required this.coverUrl,
    this.coverHint,
    final List<String> attendeeIds = const [],
    this.attendeeCount = 0,
    required this.createdAt,
  }) : _attendeeIds = attendeeIds;

  factory _$EventImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String date;
  @override
  final String location;
  @override
  final String description;
  @override
  final String coverUrl;
  @override
  final String? coverHint;
  final List<String> _attendeeIds;
  @override
  @JsonKey()
  List<String> get attendeeIds {
    if (_attendeeIds is EqualUnmodifiableListView) return _attendeeIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attendeeIds);
  }

  @override
  @JsonKey()
  final int attendeeCount;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Event(id: $id, name: $name, date: $date, location: $location, description: $description, coverUrl: $coverUrl, coverHint: $coverHint, attendeeIds: $attendeeIds, attendeeCount: $attendeeCount, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.coverUrl, coverUrl) ||
                other.coverUrl == coverUrl) &&
            (identical(other.coverHint, coverHint) ||
                other.coverHint == coverHint) &&
            const DeepCollectionEquality().equals(
              other._attendeeIds,
              _attendeeIds,
            ) &&
            (identical(other.attendeeCount, attendeeCount) ||
                other.attendeeCount == attendeeCount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    date,
    location,
    description,
    coverUrl,
    coverHint,
    const DeepCollectionEquality().hash(_attendeeIds),
    attendeeCount,
    createdAt,
  );

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      __$$EventImplCopyWithImpl<_$EventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventImplToJson(this);
  }
}

abstract class _Event implements Event {
  const factory _Event({
    required final String id,
    required final String name,
    required final String date,
    required final String location,
    required final String description,
    required final String coverUrl,
    final String? coverHint,
    final List<String> attendeeIds,
    final int attendeeCount,
    required final DateTime createdAt,
  }) = _$EventImpl;

  factory _Event.fromJson(Map<String, dynamic> json) = _$EventImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get date;
  @override
  String get location;
  @override
  String get description;
  @override
  String get coverUrl;
  @override
  String? get coverHint;
  @override
  List<String> get attendeeIds;
  @override
  int get attendeeCount;
  @override
  DateTime get createdAt;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
