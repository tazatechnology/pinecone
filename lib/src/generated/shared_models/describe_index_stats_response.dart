import 'package:json_annotation/json_annotation.dart';

import 'namespaces_value.dart';

part 'describe_index_stats_response.g.dart';

/// Response container index statistics
@JsonSerializable()
class DescribeIndexStatsResponse {
  const DescribeIndexStatsResponse({
    required this.namespaces,
    required this.dimension,
    required this.indexFullness,
    required this.totalVectorCount,
  });

  factory DescribeIndexStatsResponse.fromJson(Map<String, dynamic> json) =>
      _$DescribeIndexStatsResponseFromJson(json);

  /// A mapping for each namespace in the index from the namespace name to a summary of its contents. If a metadata filter expression is present, the summary will reflect only vectors matching that expression.
  final NamespacesValue namespaces;

  /// The dimension of the indexed vectors.
  final int dimension;

  /// The fullness of the index, regardless of whether a metadata filter expression was passed. The granularity of this metric is 10%.
  final double indexFullness;

  /// Total number of vectors in the index, regardless of whether a metadata filter expression was passed.
  final int totalVectorCount;

  Map<String, dynamic> toJson() => _$DescribeIndexStatsResponseToJson(this);
}
