// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: invalid_annotation_target
part of pinecone_schema;

// ==========================================
// CLASS: QueryResponse
// ==========================================

/// No Description
@freezed
class QueryResponse with _$QueryResponse {
  const QueryResponse._();

  /// Factory constructor for QueryResponse
  const factory QueryResponse({
    /// The namespace to query.
    required String namespace,

    /// The matches for the vectors.
    required List<VectorMatch> matches,
  }) = _QueryResponse;

  /// Object construction from a JSON representation
  factory QueryResponse.fromJson(Map<String, dynamic> json) =>
      _$QueryResponseFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['namespace', 'matches'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'namespace': namespace,
      'matches': matches,
    };
  }
}
