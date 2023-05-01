import 'package:json_annotation/json_annotation.dart';

import 'sparse_vector_data.dart';
import 'vector_filter.dart';

part 'query_request.g.dart';

@JsonSerializable()
class QueryRequest {
  const QueryRequest({
    required this.topK,
    this.namespace,
    this.filter,
    this.includeValues = false,
    this.includeMetadata = false,
    this.vector,
    this.sparseVector,
    this.id,
  });

  factory QueryRequest.fromJson(Map<String, dynamic> json) =>
      _$QueryRequestFromJson(json);

  final String? namespace;
  final int topK;
  final VectorFilter? filter;
  final bool includeValues;
  final bool includeMetadata;
  final List<double>? vector;
  final SparseVectorData? sparseVector;
  final String? id;

  Map<String, dynamic> toJson() => _$QueryRequestToJson(this);
}
