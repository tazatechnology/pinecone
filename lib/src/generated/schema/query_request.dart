// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: invalid_annotation_target
part of pinecone_schema;

// ==========================================
// CLASS: QueryRequest
// ==========================================

/// No Description
@freezed
class QueryRequest with _$QueryRequest {
  const QueryRequest._();

  /// Factory constructor for QueryRequest
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

  /// Validation constants
  static const topKDefaultValue = 10;
  static const topKMinValue = 1;
  static const topKMaxValue = 10000;
  static const idMinLengthValue = 1;
  static const idMaxLengthValue = 512;

  /// Perform validations on the schema property values
  String? validateSchema() {
    if (topK < topKMinValue) {
      return "The value of 'topK' cannot be < $topKMinValue";
    }
    if (topK > topKMaxValue) {
      return "The value of 'topK' cannot be > $topKMaxValue";
    }
    if (id != null && id!.length < idMinLengthValue) {
      return "The value of 'id' cannot be < $idMinLengthValue characters";
    }
    if (id != null && id!.length > idMaxLengthValue) {
      return "The length of 'id' cannot be > $idMaxLengthValue characters";
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
