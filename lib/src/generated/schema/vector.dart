// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: invalid_annotation_target
part of pinecone_schema;

// ==========================================
// CLASS: Vector
// ==========================================

/// No Description
@freezed
class Vector with _$Vector {
  const Vector._();

  /// Factory constructor for Vector
  const factory Vector({
    /// The unique identifier of the vector.
    required String id,

    /// The vector values
    required List<double> values,

    /// No Description
    SparseVector? sparseValues,

    /// Metadata associated with this vector.
    Map<String, dynamic>? metadata,
  }) = _Vector;

  /// Object construction from a JSON representation
  factory Vector.fromJson(Map<String, dynamic> json) => _$VectorFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'id',
    'values',
    'sparseValues',
    'metadata'
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
      'metadata': metadata,
    };
  }
}
