import 'package:json_annotation/json_annotation.dart';

import 'upsert_vector.dart';

part 'upsert_request.g.dart';

/// This operation writes vectors into a namespace. If a new value is upserted for an existing vector id, it will overwrite the previous value.
@JsonSerializable()
class UpsertRequest {
  const UpsertRequest({
    required this.vectors,
    this.namespace,
  });

  factory UpsertRequest.fromJson(Map<String, dynamic> json) =>
      _$UpsertRequestFromJson(json);

  final List<UpsertVector> vectors;

  /// This is the namespace name where you upsert vectors.
  final String? namespace;

  Map<String, dynamic> toJson() => _$UpsertRequestToJson(this);
}
