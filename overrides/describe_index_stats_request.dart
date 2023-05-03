import 'package:json_annotation/json_annotation.dart';

part 'describe_index_stats_request.g.dart';

@JsonSerializable()
class DescribeIndexStatsRequest {
  const DescribeIndexStatsRequest({
    this.filter,
  });

  factory DescribeIndexStatsRequest.fromJson(Map<String, dynamic> json) =>
      _$DescribeIndexStatsRequestFromJson(json);

  final Map<String, dynamic>? filter;

  Map<String, dynamic> toJson() => _$DescribeIndexStatsRequestToJson(this);
}
