// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// OPEN API SPECIFICATION: 3.1.0
// API TITLE: Pinecone API
// API VERSION: 6385160b2d80c50016823ac4

part of pinecone_schema;

// ==========================================
// CLASS: Collection
// ==========================================

/// No Description
@freezed
class Collection with _$Collection {
  const Collection._();

  const factory Collection({
    /// The name of the collection.
    required String name,

    /// The current status of the collection
    required CollectionStatus status,

    /// The size of the collection in bytes.
    int? size,

    /// The dimensionality of the collection.
    required int dimension,
  }) = _Collection;

  /// Object construction from a JSON representation
  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'name',
    'status',
    'size',
    'dimension'
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'status': status,
      'size': size,
      'dimension': dimension,
    };
  }
}
