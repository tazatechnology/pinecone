// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// OPEN API SPECIFICATION: 3.1.0
// API TITLE: Pinecone API
// API VERSION: 1.1.0

part of pinecone_schema;

// ==========================================
// CLASS: FetchResponse
// ==========================================

/// No Description
@freezed
class FetchResponse with _$FetchResponse {
  const FetchResponse._();

  /// Factory constructor for FetchResponse
  const factory FetchResponse({
    /// The namespace to the vectors.
    required String namespace,

    /// The matches for the vectors.
    required Map<String, Vector> vectors,
  }) = _FetchResponse;

  /// Object construction from a JSON representation
  factory FetchResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchResponseFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['namespace', 'vectors'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'namespace': namespace,
      'vectors': vectors,
    };
  }
}
