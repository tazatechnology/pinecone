import 'package:json_annotation/json_annotation.dart';

import 'index_metadata_config.dart';
import 'index_metric.dart';

part 'index_definition.g.dart';

@JsonSerializable()
class IndexDefinition {
  const IndexDefinition({
    required this.name,
    required this.dimension,
    this.metric,
    this.pods = 1,
    this.replicas = 1,
    this.podType,
    this.metadataConfig,
    this.sourceCollection,
  });

  factory IndexDefinition.fromJson(Map<String, dynamic> json) =>
      _$IndexDefinitionFromJson(json);

  final String name;
  final int dimension;
  final IndexMetric? metric;
  final int pods;
  final int replicas;
  @JsonKey(name: 'pod_type')
  final String? podType;
  @JsonKey(name: 'metadata_config')
  final IndexMetadataConfig? metadataConfig;
  @JsonKey(name: 'source_collection')
  final String? sourceCollection;

  Map<String, dynamic> toJson() => _$IndexDefinitionToJson(this);
}
