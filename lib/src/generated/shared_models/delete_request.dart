import 'package:json_annotation/json_annotation.dart';

import 'vector_filter.dart';

part 'delete_request.g.dart';

@JsonSerializable()
class DeleteRequest {
  const DeleteRequest({
    required this.ids,
    this.deleteAll = false,
    required this.namespace,
    required this.filter,
  });

  factory DeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteRequestFromJson(json);

  final List<String> ids;
  final bool deleteAll;
  final String namespace;
  final VectorFilter? filter;

  Map<String, dynamic> toJson() => _$DeleteRequestToJson(this);
}
