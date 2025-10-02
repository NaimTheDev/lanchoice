// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentImpl _$$CommentImplFromJson(Map<String, dynamic> json) =>
    _$CommentImpl(
      id: json['id'] as String,
      author: User.fromJson(json['author'] as Map<String, dynamic>),
      text: json['text'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      replies:
          (json['replies'] as List<dynamic>?)
              ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CommentImplToJson(_$CommentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'text': instance.text,
      'timestamp': instance.timestamp.toIso8601String(),
      'replies': instance.replies,
    };
