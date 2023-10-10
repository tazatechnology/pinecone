// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: invalid_annotation_target
part of pinecone_schema;

// ==========================================
// CLASS: DeleteRequest
// ==========================================

/// No Description
@freezed
class DeleteRequest with _$DeleteRequest {
  const DeleteRequest._();

  /// Factory constructor for DeleteRequest
  const factory DeleteRequest({
    /// Vectors to delete, by id.
    List<String>? ids,

    /// This indicates that all vectors in the index namespace should be deleted.
    bool? deleteAll,

    /// The namespace to delete vectors from, if applicable.
    String? namespace,

    /// If specified, the metadata filter here will be used to select the vectors to delete.
    Map<String, dynamic>? filter,
  }) = _DeleteRequest;

  /// Object construction from a JSON representation
  factory DeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteRequestFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'ids',
    'deleteAll',
    'namespace',
    'filter'
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'ids': ids,
      'deleteAll': deleteAll,
      'namespace': namespace,
      'filter': filter,
    };
  }
}
