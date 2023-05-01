import 'package:json_annotation/json_annotation.dart';

import 'index_metric.dart';

part 'index_database.g.dart';

@JsonSerializable()
class IndexDatabase {
  const IndexDatabase({
    required this.name,
    required this.metric,
    required this.dimension,
    required this.replicas,
    required this.shards,
    required this.pods,
    required this.podType,
  });

  factory IndexDatabase.fromJson(Map<String, dynamic> json) =>
      _$IndexDatabaseFromJson(json);

  final String name;
  final IndexMetric metric;
  final int dimension;
  final int replicas;
  final int shards;
  final int pods;
  @JsonKey(name: 'pod_type')
  final String? podType;

  Map<String, dynamic> toJson() => _$IndexDatabaseToJson(this);
}
