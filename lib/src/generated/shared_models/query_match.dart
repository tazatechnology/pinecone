import 'package:json_annotation/json_annotation.dart';

import 'sparse_vector_data.dart';
import 'vector_metadata.dart';

part 'query_match.g.dart';

/// The matches for the vectors.
@JsonSerializable()
class QueryMatch {
  const QueryMatch({
    required this.id,
    this.score,
    this.values,
    this.sparseValues,
    this.metadata,
  });

  factory QueryMatch.fromJson(Map<String, dynamic> json) =>
      _$QueryMatchFromJson(json);

  /// This is the vector's unique id.
  final String id;

  /// This is a measure of similarity between this vector and the query vector. The higher the score, the more they are similar.
  final double? score;
  final List<double>? values;

  /// Vector sparse data. Represented as a list of indices and a list of corresponded values, which must be the same length.
  final SparseVectorData? sparseValues;

  /// This is the metadata, if it is requested.
  final VectorMetadata? metadata;

  Map<String, dynamic> toJson() => _$QueryMatchToJson(this);
}
