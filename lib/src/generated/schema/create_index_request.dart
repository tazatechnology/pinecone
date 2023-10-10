// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: invalid_annotation_target
part of pinecone_schema;

// ==========================================
// CLASS: CreateIndexRequest
// ==========================================

/// No Description
@freezed
class CreateIndexRequest with _$CreateIndexRequest {
  const CreateIndexRequest._();

  /// Factory constructor for CreateIndexRequest
  const factory CreateIndexRequest({
    /// The name of the index to be created.
    required String name,

    /// The dimensions of the vectors to be inserted in the index.
    required int dimension,

    /// The vector similarity metric of the index.
    @Default(SearchMetric.cosine) SearchMetric metric,

    /// The number of pods for the index to use, including replicas.
    @Default(1) int pods,

    /// The number of replicas. Replicas duplicate your index. They provide higher availability and throughput.
    @Default(1) int replicas,

    /// An enumeration of the available pod types.
    @JsonKey(name: 'pod_type') @Default(PodType.p1x1) PodType podType,

    /// Configuration for the behavior of Pinecone's internal metadata index.
    @JsonKey(name: 'metadata_config') Map<String, dynamic>? metadataConfig,

    /// The name of the collection to create an index from.
    @JsonKey(name: 'source_collection') String? sourceCollection,
  }) = _CreateIndexRequest;

  /// Object construction from a JSON representation
  factory CreateIndexRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateIndexRequestFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'name',
    'dimension',
    'metric',
    'pods',
    'replicas',
    'pod_type',
    'metadata_config',
    'source_collection'
  ];

  /// Validation constants
  static const nameMaxLengthValue = 45;
  static const podsDefaultValue = 1;
  static const podsMinValue = 1;
  static const replicasDefaultValue = 1;
  static const replicasMinValue = 1;

  /// Perform validations on the schema property values
  String? validateSchema() {
    if (name.length > nameMaxLengthValue) {
      return "The length of 'name' cannot be > $nameMaxLengthValue characters";
    }
    if (pods < podsMinValue) {
      return "The value of 'pods' cannot be < $podsMinValue";
    }
    if (replicas < replicasMinValue) {
      return "The value of 'replicas' cannot be < $replicasMinValue";
    }
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'dimension': dimension,
      'metric': metric,
      'pods': pods,
      'replicas': replicas,
      'pod_type': podType,
      'metadata_config': metadataConfig,
      'source_collection': sourceCollection,
    };
  }
}
