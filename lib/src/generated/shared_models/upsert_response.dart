import 'package:json_annotation/json_annotation.dart';

part 'upsert_response.g.dart';

/// The response of update request
@JsonSerializable()
class UpsertResponse {
  const UpsertResponse({
    required this.upsertedCount,
  });

  factory UpsertResponse.fromJson(Map<String, dynamic> json) =>
      _$UpsertResponseFromJson(json);

  /// The number of vectors upserted.
  final int upsertedCount;

  Map<String, dynamic> toJson() => _$UpsertResponseToJson(this);
}
