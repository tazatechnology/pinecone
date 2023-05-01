import 'package:json_annotation/json_annotation.dart';

import 'vector_filter.dart';

part 'describe_index_stats_request.g.dart';

@JsonSerializable()
class DescribeIndexStatsRequest {
  const DescribeIndexStatsRequest({
    required this.filter,
  });

  factory DescribeIndexStatsRequest.fromJson(Map<String, dynamic> json) =>
      _$DescribeIndexStatsRequestFromJson(json);

  final VectorFilter filter;

  Map<String, dynamic> toJson() => _$DescribeIndexStatsRequestToJson(this);
}
