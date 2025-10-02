// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
  id: json['id'] as String,
  author: User.fromJson(json['author'] as Map<String, dynamic>),
  content: json['content'] as String,
  imageUrl: json['imageUrl'] as String?,
  imageHint: json['imageHint'] as String?,
  car: json['car'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
  likes: (json['likes'] as num?)?.toInt() ?? 0,
  likedBy:
      (json['likedBy'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  comments:
      (json['comments'] as List<dynamic>?)
          ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'content': instance.content,
      'imageUrl': instance.imageUrl,
      'imageHint': instance.imageHint,
      'car': instance.car,
      'createdAt': instance.createdAt.toIso8601String(),
      'likes': instance.likes,
      'likedBy': instance.likedBy,
      'comments': instance.comments,
    };
