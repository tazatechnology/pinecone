import 'package:json_annotation/json_annotation.dart';

part 'index_configuration.g.dart';

@JsonSerializable()
class IndexConfiguration {
  const IndexConfiguration({
    this.replicas = 1,
    required this.podType,
  });

  factory IndexConfiguration.fromJson(Map<String, dynamic> json) =>
      _$IndexConfigurationFromJson(json);

  final int replicas;
  @JsonKey(name: 'pod_type')
  final String? podType;

  Map<String, dynamic> toJson() => _$IndexConfigurationToJson(this);
}
