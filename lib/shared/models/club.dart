import 'package:freezed_annotation/freezed_annotation.dart';

part 'club.freezed.dart';
part 'club.g.dart';

@freezed
class Club with _$Club {
  const factory Club({
    required String id,
    required String name,
    required String description,
    required String bannerUrl,
    String? bannerHint,
    @Default(false) bool isPrivate,
    required String ownerId,
    @Default([]) List<String> memberIds,
    @Default([]) List<String> joinRequestIds,
    @Default(0) int memberCount,
    required DateTime createdAt,
  }) = _Club;

  factory Club.fromJson(Map<String, dynamic> json) => _$ClubFromJson(json);
}
