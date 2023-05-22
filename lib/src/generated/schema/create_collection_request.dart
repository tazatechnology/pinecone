// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// OPEN API SPECIFICATION: 3.1.0
// API TITLE: Pinecone API
// API VERSION: 6385160b2d80c50016823ac4

part of pinecone_schema;

// ==========================================
// CLASS: CreateCollectionRequest
// ==========================================

/// No Description
@freezed
class CreateCollectionRequest with _$CreateCollectionRequest {
  const CreateCollectionRequest._();

  const factory CreateCollectionRequest({
    /// The name of the collection to create.
    required String name,

    /// The name of the index to use as the source of the collection.
    required String source,
  }) = _CreateCollectionRequest;

  /// Object construction from a JSON representation
  factory CreateCollectionRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateCollectionRequestFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['name', 'source'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'source': source,
    };
  }
}
