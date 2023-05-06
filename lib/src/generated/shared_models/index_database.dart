import 'package:json_annotation/json_annotation.dart';

import 'index_metric.dart';

part 'index_database.g.dart';

/// Object container for index database information
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

  /// The name of the index
  final String name;

  /// The distance metric to be used for similarity search
  final IndexMetric metric;

  /// The dimensions of the vectors to be inserted in the index
  final int dimension;

  /// The number of replicas
  final int replicas;

  /// The number of shares
  final int shards;

  /// The number of pods
  final int pods;

  /// The type of pods
  @JsonKey(name: 'pod_type')
  final String? podType;

  Map<String, dynamic> toJson() => _$IndexDatabaseToJson(this);
}
