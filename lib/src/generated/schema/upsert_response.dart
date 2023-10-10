// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: invalid_annotation_target
part of pinecone_schema;

// ==========================================
// CLASS: UpsertResponse
// ==========================================

/// No Description
@freezed
class UpsertResponse with _$UpsertResponse {
  const UpsertResponse._();

  /// Factory constructor for UpsertResponse
  const factory UpsertResponse({
    /// The number of vectors upserted.
    int? upsertedCount,
  }) = _UpsertResponse;

  /// Object construction from a JSON representation
  factory UpsertResponse.fromJson(Map<String, dynamic> json) =>
      _$UpsertResponseFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['upsertedCount'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'upsertedCount': upsertedCount,
    };
  }
}
