import 'package:json_annotation/json_annotation.dart';

import 'upsert_vector.dart';

part 'upsert_request.g.dart';

@JsonSerializable()
class UpsertRequest {
  const UpsertRequest({
    required this.vectors,
    this.namespace,
  });

  factory UpsertRequest.fromJson(Map<String, dynamic> json) =>
      _$UpsertRequestFromJson(json);

  final List<UpsertVector> vectors;
  final String? namespace;

  Map<String, dynamic> toJson() => _$UpsertRequestToJson(this);
}
