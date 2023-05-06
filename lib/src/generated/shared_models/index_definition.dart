import 'package:json_annotation/json_annotation.dart';

import 'index_metadata_config.dart';
import 'index_metric.dart';

part 'index_definition.g.dart';

/// The index to create
@JsonSerializable()
class IndexDefinition {
  const IndexDefinition({
    required this.name,
    required this.dimension,
    this.pods = 1,
    this.replicas = 1,
    this.metric,
    this.podType,
    this.metadataConfig,
    this.sourceCollection,
  });

  factory IndexDefinition.fromJson(Map<String, dynamic> json) =>
      _$IndexDefinitionFromJson(json);

  /// The name of the index to be created. The maximum length is 45 characters.
  final String name;

  /// The dimensions of the vectors to be inserted in the index
  final int dimension;

  /// The distance metric to be used for similarity search: euclidean, cosine, or dotproduct.
  final IndexMetric? metric;

  /// The number of pods for the index to use,including replicas.
  final int pods;

  /// The number of replicas. Replicas duplicate your index. They provide higher availability and throughput.
  final int replicas;

  /// The type of pod to use. One of s1, p1, or p2 appended with . and one of x1, x2, x4, or x8.
  @JsonKey(name: 'pod_type')
  final String? podType;

  /// Configuration for the behavior of Pinecone's internal metadata index. By default, all metadata is indexed; when metadata_config is present, only specified metadata fields are indexed.
  @JsonKey(name: 'metadata_config')
  final IndexMetadataConfig? metadataConfig;

  /// The name of the collection to create an index from
  @JsonKey(name: 'source_collection')
  final String? sourceCollection;

  Map<String, dynamic> toJson() => _$IndexDefinitionToJson(this);
}
