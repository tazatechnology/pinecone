import 'package:json_annotation/json_annotation.dart';

part 'collection_definition.g.dart';

/// The collection to create
@JsonSerializable()
class CollectionDefinition {
  const CollectionDefinition({
    required this.name,
    required this.source,
  });

  factory CollectionDefinition.fromJson(Map<String, dynamic> json) =>
      _$CollectionDefinitionFromJson(json);

  /// The name of the collection to be created.
  final String name;

  /// The name of the source index to be used as the source for the collection.
  final String source;

  Map<String, dynamic> toJson() => _$CollectionDefinitionToJson(this);
}
