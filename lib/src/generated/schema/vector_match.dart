// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: invalid_annotation_target
part of pinecone_schema;

// ==========================================
// CLASS: VectorMatch
// ==========================================

/// No Description
@freezed
class VectorMatch with _$VectorMatch {
  const VectorMatch._();

  /// Factory constructor for VectorMatch
  const factory VectorMatch({
    /// The unique identifier of the vector.
    required String id,

    /// This is a measure of similarity between this vector and the query vector. The higher the score, the more they are similar.
    double? score,

    /// This is the vector data, if it is requested.
    List<double>? values,

    /// No Description
    SparseVector? sparseValues,

    /// This is the metadata, if it is requested.
    Map<String, dynamic>? metadata,
  }) = _VectorMatch;

  /// Object construction from a JSON representation
  factory VectorMatch.fromJson(Map<String, dynamic> json) =>
      _$VectorMatchFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'id',
    'score',
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
      'score': score,
      'values': values,
      'sparseValues': sparseValues,
      'metadata': metadata,
    };
  }
}
