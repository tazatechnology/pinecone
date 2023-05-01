import 'package:json_annotation/json_annotation.dart';

part 'collection_definition.g.dart';

@JsonSerializable()
class CollectionDefinition {
  const CollectionDefinition({
    required this.name,
    required this.source,
  });

  factory CollectionDefinition.fromJson(Map<String, dynamic> json) =>
      _$CollectionDefinitionFromJson(json);

  final String name;
  final String source;

  Map<String, dynamic> toJson() => _$CollectionDefinitionToJson(this);
}
