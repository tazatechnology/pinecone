import 'package:json_annotation/json_annotation.dart';

part 'update_response.g.dart';

/// Response from update request
@JsonSerializable()
class UpdateResponse {
  const UpdateResponse();

  factory UpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateResponseToJson(this);
}
