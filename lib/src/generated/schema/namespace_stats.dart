// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: invalid_annotation_target
part of pinecone_schema;

// ==========================================
// CLASS: NamespaceStats
// ==========================================

/// A summary of the contents of a namespace.
@freezed
class NamespaceStats with _$NamespaceStats {
  const NamespaceStats._();

  /// Factory constructor for NamespaceStats
  const factory NamespaceStats({
    /// The number of vectors stored in this namespace.
    required int vectorCount,
  }) = _NamespaceStats;

  /// Object construction from a JSON representation
  factory NamespaceStats.fromJson(Map<String, dynamic> json) =>
      _$NamespaceStatsFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['vectorCount'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'vectorCount': vectorCount,
    };
  }
}
