import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

@freezed
class Comment with _$Comment {
  const factory Comment({
    required String id,
    required User author,
    required String text,
    required DateTime timestamp,
    @Default([]) List<Comment> replies,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}
