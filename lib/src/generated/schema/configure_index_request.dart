// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: invalid_annotation_target
part of pinecone_schema;

// ==========================================
// CLASS: ConfigureIndexRequest
// ==========================================

/// No Description
@freezed
class ConfigureIndexRequest with _$ConfigureIndexRequest {
  const ConfigureIndexRequest._();

  /// Factory constructor for ConfigureIndexRequest
  const factory ConfigureIndexRequest({
    /// The desired number of replicas for the index.
    @Default(1) int replicas,

    /// An enumeration of the available pod types.
    @JsonKey(
      name: 'pod_type',
      unknownEnumValue: JsonKey.nullForUndefinedEnumValue,
    )
    PodType? podType,
  }) = _ConfigureIndexRequest;

  /// Object construction from a JSON representation
  factory ConfigureIndexRequest.fromJson(Map<String, dynamic> json) =>
      _$ConfigureIndexRequestFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['replicas', 'pod_type'];

  /// Validation constants
  static const replicasDefaultValue = 1;
  static const replicasMinValue = 1;

  /// Perform validations on the schema property values
  String? validateSchema() {
    if (replicas < replicasMinValue) {
      return "The value of 'replicas' cannot be < $replicasMinValue";
    }
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'replicas': replicas,
      'pod_type': podType,
    };
  }
}
