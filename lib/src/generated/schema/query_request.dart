// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// OPEN API SPECIFICATION: 3.1.0
// API TITLE: Pinecone API
// API VERSION: 6385160b2d80c50016823ac4

part of pinecone_schema;

// ==========================================
// CLASS: QueryRequest
// ==========================================

/// No Description
@freezed
class QueryRequest with _$QueryRequest {
  const QueryRequest._();

  const factory QueryRequest({
    /// The namespace to query.
    String? namespace,

    /// The number of results to return for each query.
    @Default(10) int topK,

    /// The filter to apply. You can use vector metadata to limit your search.
    Map<String, dynamic>? filter,

    /// Indicates whether vector values are included in the response.
    @Default(false) bool includeValues,

    /// Indicates whether metadata is included in the response as well as the ids.
    @Default(false) bool includeMetadata,

    /// The query vector. This should be the same length as the dimension of the index being queried.
    List<double>? vector,

    /// No Description
    SparseVector? sparseVector,

    /// The unique ID of the vector to be used as a query vector.
    String? id,
  }) = _QueryRequest;

  /// Object construction from a JSON representation
  factory QueryRequest.fromJson(Map<String, dynamic> json) =>
      _$QueryRequestFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'namespace',
    'topK',
    'filter',
    'includeValues',
    'includeMetadata',
    'vector',
    'sparseVector',
    'id'
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    if (topK < 1) {
      return "The value of 'topK' cannot be < 1";
    }
    if (topK > 10000) {
      return "The value of 'topK' cannot be > 10000";
    }
    if (id != null && id!.length < 1) {
      return "The value of 'id' cannot be < 1 characters";
    }
    if (id != null && id!.length > 512) {
      return "The length of 'id' cannot be > 512 characters";
    }
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'namespace': namespace,
      'topK': topK,
      'filter': filter,
      'includeValues': includeValues,
      'includeMetadata': includeMetadata,
      'vector': vector,
      'sparseVector': sparseVector,
      'id': id,
    };
  }
}
