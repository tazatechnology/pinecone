import 'package:json_annotation/json_annotation.dart';

part 'vectors_value.g.dart';

@JsonSerializable()
class VectorsValue {
  const VectorsValue({
    required this.additionalProperties,
  });

  factory VectorsValue.fromJson(Map<String, dynamic> json) =>
      _$VectorsValueFromJson(json);

  final List<double> additionalProperties;

  Map<String, dynamic> toJson() => _$VectorsValueToJson(this);
}
