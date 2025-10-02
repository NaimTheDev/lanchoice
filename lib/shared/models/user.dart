import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String name,
    required String handle,
    required String email,
    required String avatarUrl,
    String? coverUrl,
    String? bio,
    String? location,
    String? instagramUrl,
    @Default(false) bool isPrivate,
    @Default(false) bool isVerified,
    String? themeColor,
    @Default('free') String subscriptionTier,
    @Default([]) List<String> raceTypes,
    @Default([]) List<String> raceCardImageUrls,
    String? raceCarName,
    String? raceCardDescription,
    @Default(0) int followerCount,
    @Default(0) int followingCount,
    @Default([]) List<String> garagePhotos,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
