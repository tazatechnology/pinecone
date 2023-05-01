import 'package:json_annotation/json_annotation.dart';

import 'sparse_vector_data.dart';
import 'vector_metadata.dart';

part 'update_request.g.dart';

@JsonSerializable()
class UpdateRequest {
  const UpdateRequest({
    required this.id,
    this.values,
    this.sparseValues,
    this.setMetadata,
    this.namespace,
  });

  factory UpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateRequestFromJson(json);

  final String id;
  final List<double>? values;
  final SparseVectorData? sparseValues;
  final VectorMetadata? setMetadata;
  final String? namespace;

  Map<String, dynamic> toJson() => _$UpdateRequestToJson(this);
}
