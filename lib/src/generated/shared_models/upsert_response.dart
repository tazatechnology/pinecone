import 'package:json_annotation/json_annotation.dart';

part 'upsert_response.g.dart';

@JsonSerializable()
class UpsertResponse {
  const UpsertResponse({
    required this.upsertedCount,
  });

  factory UpsertResponse.fromJson(Map<String, dynamic> json) =>
      _$UpsertResponseFromJson(json);

  final int upsertedCount;

  Map<String, dynamic> toJson() => _$UpsertResponseToJson(this);
}
