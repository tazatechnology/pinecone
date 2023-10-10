// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: invalid_annotation_target
part of pinecone_schema;

// ==========================================
// CLASS: SparseVector
// ==========================================

/// No Description
@freezed
class SparseVector with _$SparseVector {
  const SparseVector._();

  /// Factory constructor for SparseVector
  const factory SparseVector({
    /// The indices of the sparse data.
    List<int>? indices,

    /// The corresponding values of the sparse data, which must be the same length as the indices.
    List<double>? values,
  }) = _SparseVector;

  /// Object construction from a JSON representation
  factory SparseVector.fromJson(Map<String, dynamic> json) =>
      _$SparseVectorFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['indices', 'values'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'indices': indices,
      'values': values,
    };
  }
}
