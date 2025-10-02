import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
class Event with _$Event {
  const factory Event({
    required String id,
    required String name,
    required String date,
    required String location,
    required String description,
    required String coverUrl,
    String? coverHint,
    @Default([]) List<String> attendeeIds,
    @Default(0) int attendeeCount,
    required DateTime createdAt,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}
