import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';
import 'comment.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  const factory Post({
    required String id,
    required User author,
    required String content,
    String? imageUrl,
    String? imageHint,
    String? car,
    required DateTime createdAt,
    @Default(0) int likes,
    @Default([]) List<String> likedBy,
    @Default([]) List<Comment> comments,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
