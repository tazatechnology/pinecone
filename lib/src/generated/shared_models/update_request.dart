import 'package:json_annotation/json_annotation.dart';

import 'sparse_vector_data.dart';
import 'vector_metadata.dart';

part 'update_request.g.dart';

/// A vector update request
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

  /// The vector's unique ID
  final String id;
  final List<double>? values;

  /// Vector sparse data. Represented as a list of indices and a list of corresponded values, which must be the same length.
  final SparseVectorData? sparseValues;

  /// Metadata to set for the vector.
  final VectorMetadata? setMetadata;

  /// The namespace containing the vector to update.
  final String? namespace;

  Map<String, dynamic> toJson() => _$UpdateRequestToJson(this);
}
