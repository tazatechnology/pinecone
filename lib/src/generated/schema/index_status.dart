// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: invalid_annotation_target
part of pinecone_schema;

// ==========================================
// CLASS: IndexStatus
// ==========================================

/// Information regarding status of the index.
@freezed
class IndexStatus with _$IndexStatus {
  const IndexStatus._();

  /// Factory constructor for IndexStatus
  const factory IndexStatus({
    /// The host of the index.
    required String host,

    /// The port of this index.
    required int port,

    /// The current state of a index.
    @JsonKey(unknownEnumValue: IndexState.terminating)
    required IndexState state,

    /// Indicator of index readiness.
    required bool ready,
  }) = _IndexStatus;

  /// Object construction from a JSON representation
  factory IndexStatus.fromJson(Map<String, dynamic> json) =>
      _$IndexStatusFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['host', 'port', 'state', 'ready'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'host': host,
      'port': port,
      'state': state,
      'ready': ready,
    };
  }
}
