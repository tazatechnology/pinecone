// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// OPEN API SPECIFICATION: 3.1.0
// API TITLE: Pinecone API
// API VERSION: 6385160b2d80c50016823ac4

part of pinecone_schema;

// ==========================================
// CLASS: IndexStatsRequest
// ==========================================

/// No Description
@freezed
class IndexStatsRequest with _$IndexStatsRequest {
  const IndexStatsRequest._();

  const factory IndexStatsRequest({
    /// If defined, the operation only returns statistics for vectors that satisfy the filter.
    Map<String, dynamic>? filter,
  }) = _IndexStatsRequest;

  /// Object construction from a JSON representation
  factory IndexStatsRequest.fromJson(Map<String, dynamic> json) =>
      _$IndexStatsRequestFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['filter'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'filter': filter,
    };
  }
}
