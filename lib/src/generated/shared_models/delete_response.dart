import 'package:json_annotation/json_annotation.dart';

part 'delete_response.g.dart';

@JsonSerializable()
class DeleteResponse {
  const DeleteResponse();

  factory DeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DeleteResponseToJson(this);
}
