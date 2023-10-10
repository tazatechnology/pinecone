// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: invalid_annotation_target
part of pinecone_schema;

// ==========================================
// CLASS: UpdateRequest
// ==========================================

/// No Description
@freezed
class UpdateRequest with _$UpdateRequest {
  const UpdateRequest._();

  /// Factory constructor for UpdateRequest
  const factory UpdateRequest({
    /// The unique identifier of the vector.
    required String id,

    /// The vector values
    List<double>? values,

    /// No Description
    SparseVector? sparseValues,

    /// Metadata to set for the vector.
    Map<String, dynamic>? setMetadata,

    /// The namespace containing the vector to update.
    String? namespace,
  }) = _UpdateRequest;

  /// Object construction from a JSON representation
  factory UpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateRequestFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'id',
    'values',
    'sparseValues',
    'setMetadata',
    'namespace'
  ];

  /// Validation constants
  static const idMinLengthValue = 1;
  static const idMaxLengthValue = 512;

  /// Perform validations on the schema property values
  String? validateSchema() {
    if (id.length < idMinLengthValue) {
      return "The value of 'id' cannot be < $idMinLengthValue characters";
    }
    if (id.length > idMaxLengthValue) {
      return "The length of 'id' cannot be > $idMaxLengthValue characters";
    }
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'values': values,
      'sparseValues': sparseValues,
      'setMetadata': setMetadata,
      'namespace': namespace,
    };
  }
}
