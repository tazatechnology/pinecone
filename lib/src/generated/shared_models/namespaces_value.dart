import 'package:json_annotation/json_annotation.dart';

import 'index_namespace_stats.dart';

part 'namespaces_value.g.dart';

@JsonSerializable()
class NamespacesValue {
  const NamespacesValue({
    required this.additionalProperties,
  });

  factory NamespacesValue.fromJson(Map<String, dynamic> json) =>
      _$NamespacesValueFromJson(json);

  final IndexNamespaceStats additionalProperties;

  Map<String, dynamic> toJson() => _$NamespacesValueToJson(this);
}
