import 'package:json_annotation/json_annotation.dart';

import 'namespaces_value.dart';

part 'describe_index_stats_response.g.dart';

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

  final NamespacesValue namespaces;
  final int dimension;
  final double indexFullness;
  final int totalVectorCount;

  Map<String, dynamic> toJson() => _$DescribeIndexStatsResponseToJson(this);
}
