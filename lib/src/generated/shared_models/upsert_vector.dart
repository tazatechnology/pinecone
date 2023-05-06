import 'package:json_annotation/json_annotation.dart';

import 'sparse_vector_data.dart';
import 'vector_metadata.dart';

part 'upsert_vector.g.dart';

/// The vector object to upsert
@JsonSerializable()
class UpsertVector {
  const UpsertVector({
    required this.id,
    required this.values,
    this.sparseValues,
    this.metadata,
  });

  factory UpsertVector.fromJson(Map<String, dynamic> json) =>
      _$UpsertVectorFromJson(json);

  /// This is the vector's unique id.
  final String id;
  final List<double> values;

  /// Vector sparse data. Represented as a list of indices and a list of corresponded values, which must be the same length.
  final SparseVectorData? sparseValues;

  /// This is the metadata included in the request.
  final VectorMetadata? metadata;

  Map<String, dynamic> toJson() => _$UpsertVectorToJson(this);
}
