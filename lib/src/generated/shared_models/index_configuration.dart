import 'package:json_annotation/json_annotation.dart';

part 'index_configuration.g.dart';

/// This operation specifies the pod type and number of replicas for an index.
@JsonSerializable()
class IndexConfiguration {
  const IndexConfiguration({
    required this.podType,
    this.replicas = 1,
  });

  factory IndexConfiguration.fromJson(Map<String, dynamic> json) =>
      _$IndexConfigurationFromJson(json);

  /// The desired number of replicas for the index.
  final int replicas;

  /// The new pod type for the index. One of s1, p1, or p2 appended with . and one of x1, x2, x4, or x8.
  @JsonKey(name: 'pod_type')
  final String? podType;

  Map<String, dynamic> toJson() => _$IndexConfigurationToJson(this);
}
