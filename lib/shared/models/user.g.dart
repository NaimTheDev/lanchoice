// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
  id: json['id'] as String,
  name: json['name'] as String,
  handle: json['handle'] as String,
  email: json['email'] as String,
  avatarUrl: json['avatarUrl'] as String,
  coverUrl: json['coverUrl'] as String?,
  bio: json['bio'] as String?,
  location: json['location'] as String?,
  instagramUrl: json['instagramUrl'] as String?,
  isPrivate: json['isPrivate'] as bool? ?? false,
  isVerified: json['isVerified'] as bool? ?? false,
  themeColor: json['themeColor'] as String?,
  subscriptionTier: json['subscriptionTier'] as String? ?? 'free',
  raceTypes:
      (json['raceTypes'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  raceCardImageUrls:
      (json['raceCardImageUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  raceCarName: json['raceCarName'] as String?,
  raceCardDescription: json['raceCardDescription'] as String?,
  followerCount: (json['followerCount'] as num?)?.toInt() ?? 0,
  followingCount: (json['followingCount'] as num?)?.toInt() ?? 0,
  garagePhotos:
      (json['garagePhotos'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
);

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'handle': instance.handle,
      'email': instance.email,
      'avatarUrl': instance.avatarUrl,
      'coverUrl': instance.coverUrl,
      'bio': instance.bio,
      'location': instance.location,
      'instagramUrl': instance.instagramUrl,
      'isPrivate': instance.isPrivate,
      'isVerified': instance.isVerified,
      'themeColor': instance.themeColor,
      'subscriptionTier': instance.subscriptionTier,
      'raceTypes': instance.raceTypes,
      'raceCardImageUrls': instance.raceCardImageUrls,
      'raceCarName': instance.raceCarName,
      'raceCardDescription': instance.raceCardDescription,
      'followerCount': instance.followerCount,
      'followingCount': instance.followingCount,
      'garagePhotos': instance.garagePhotos,
    };
