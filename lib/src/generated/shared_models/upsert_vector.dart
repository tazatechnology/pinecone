import 'package:json_annotation/json_annotation.dart';

import 'sparse_vector_data.dart';
import 'vector_metadata.dart';

part 'upsert_vector.g.dart';

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

  final String id;
  final List<double> values;
  final SparseVectorData? sparseValues;
  final VectorMetadata? metadata;

  Map<String, dynamic> toJson() => _$UpsertVectorToJson(this);
}
