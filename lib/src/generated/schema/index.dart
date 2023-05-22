// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// OPEN API SPECIFICATION: 3.1.0
// API TITLE: Pinecone API
// API VERSION: 6385160b2d80c50016823ac4

part of pinecone_schema;

// ==========================================
// CLASS: Index
// ==========================================

/// No Description
@freezed
class Index with _$Index {
  const Index._();

  const factory Index({
    /// Summary of index properties and metadata
    required IndexDatabase database,

    /// Information regarding status of the index.
    required IndexStatus status,
  }) = _Index;

  /// Object construction from a JSON representation
  factory Index.fromJson(Map<String, dynamic> json) => _$IndexFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['database', 'status'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'database': database,
      'status': status,
    };
  }
}
