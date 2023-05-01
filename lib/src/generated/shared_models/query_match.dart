import 'package:json_annotation/json_annotation.dart';

import 'sparse_vector_data.dart';
import 'vector_metadata.dart';

part 'query_match.g.dart';

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

  final String id;
  final double? score;
  final List<double>? values;
  final SparseVectorData? sparseValues;
  final VectorMetadata? metadata;

  Map<String, dynamic> toJson() => _$QueryMatchToJson(this);
}
