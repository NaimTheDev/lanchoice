// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventImpl _$$EventImplFromJson(Map<String, dynamic> json) => _$EventImpl(
  id: json['id'] as String,
  name: json['name'] as String,
  date: json['date'] as String,
  location: json['location'] as String,
  description: json['description'] as String,
  coverUrl: json['coverUrl'] as String,
  coverHint: json['coverHint'] as String?,
  attendeeIds:
      (json['attendeeIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  attendeeCount: (json['attendeeCount'] as num?)?.toInt() ?? 0,
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$$EventImplToJson(_$EventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'date': instance.date,
      'location': instance.location,
      'description': instance.description,
      'coverUrl': instance.coverUrl,
      'coverHint': instance.coverHint,
      'attendeeIds': instance.attendeeIds,
      'attendeeCount': instance.attendeeCount,
      'createdAt': instance.createdAt.toIso8601String(),
    };
