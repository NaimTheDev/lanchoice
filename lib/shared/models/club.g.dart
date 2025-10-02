// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClubImpl _$$ClubImplFromJson(Map<String, dynamic> json) => _$ClubImpl(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
  bannerUrl: json['bannerUrl'] as String,
  bannerHint: json['bannerHint'] as String?,
  isPrivate: json['isPrivate'] as bool? ?? false,
  ownerId: json['ownerId'] as String,
  memberIds:
      (json['memberIds'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  joinRequestIds:
      (json['joinRequestIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  memberCount: (json['memberCount'] as num?)?.toInt() ?? 0,
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$$ClubImplToJson(_$ClubImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'bannerUrl': instance.bannerUrl,
      'bannerHint': instance.bannerHint,
      'isPrivate': instance.isPrivate,
      'ownerId': instance.ownerId,
      'memberIds': instance.memberIds,
      'joinRequestIds': instance.joinRequestIds,
      'memberCount': instance.memberCount,
      'createdAt': instance.createdAt.toIso8601String(),
    };
