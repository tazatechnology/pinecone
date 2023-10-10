// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: invalid_annotation_target
part of pinecone_schema;

// ==========================================
// CLASS: IndexDatabase
// ==========================================

/// Summary of index properties and metadata
@freezed
class IndexDatabase with _$IndexDatabase {
  const IndexDatabase._();

  /// Factory constructor for IndexDatabase
  const factory IndexDatabase({
    /// The name of the index.
    required String name,

    /// The vector similarity metric of the index.
    required SearchMetric metric,

    /// The dimension of the index.
    required int dimension,

    /// The number of index replicas.
    required int replicas,

    /// The number of index shards.
    required int shards,

    /// The number of index pods.
    required int pods,

    /// An enumeration of the available pod types.
    @JsonKey(
      name: 'pod_type',
      unknownEnumValue: JsonKey.nullForUndefinedEnumValue,
    )
    PodType? podType,
  }) = _IndexDatabase;

  /// Object construction from a JSON representation
  factory IndexDatabase.fromJson(Map<String, dynamic> json) =>
      _$IndexDatabaseFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'name',
    'metric',
    'dimension',
    'replicas',
    'shards',
    'pods',
    'pod_type'
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'metric': metric,
      'dimension': dimension,
      'replicas': replicas,
      'shards': shards,
      'pods': pods,
      'pod_type': podType,
    };
  }
}
