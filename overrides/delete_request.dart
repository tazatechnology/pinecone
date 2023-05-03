import 'package:json_annotation/json_annotation.dart';

part 'delete_request.g.dart';

@JsonSerializable()
class DeleteRequest {
  const DeleteRequest({
    required this.ids,
    this.deleteAll = false,
    this.namespace,
    this.filter,
  });

  factory DeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteRequestFromJson(json);

  final List<String> ids;
  final bool deleteAll;
  final String? namespace;
  final Map<String, dynamic>? filter;

  Map<String, dynamic> toJson() => _$DeleteRequestToJson(this);
}
