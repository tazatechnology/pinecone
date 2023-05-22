// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// OPEN API SPECIFICATION: 3.1.0
// API TITLE: Pinecone API
// API VERSION: 1.1.0

part of pinecone_schema;

// ==========================================
// CLASS: IndexStats
// ==========================================

/// Information regarding status of the index.
@freezed
class IndexStats with _$IndexStats {
  const IndexStats._();

  /// Factory constructor for IndexStats
  const factory IndexStats({
    /// A mapping for each namespace in the index from the namespace name to a summary of its contents.
    Map<String, NamespaceStats>? namespaces,

    /// The dimension of the indexed vectors.
    int? dimension,

    /// The fullness of the index, regardless of whether a metadata filter expression was passed. The granularity of this metric is 10%.
    double? indexFullness,

    /// Indicator of index readiness.
    int? totalVectorCount,
  }) = _IndexStats;

  /// Object construction from a JSON representation
  factory IndexStats.fromJson(Map<String, dynamic> json) =>
      _$IndexStatsFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'namespaces',
    'dimension',
    'indexFullness',
    'totalVectorCount'
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'namespaces': namespaces,
      'dimension': dimension,
      'indexFullness': indexFullness,
      'totalVectorCount': totalVectorCount,
    };
  }
}
