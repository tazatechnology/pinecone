import 'package:json_annotation/json_annotation.dart';

part 'collection.g.dart';

@JsonSerializable()
class Collection {
  const Collection({
    required this.name,
    required this.dimension,
    required this.status,
    this.size,
  });

  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);

  final String name;
  final int dimension;
  final int? size;
  final String status;

  Map<String, dynamic> toJson() => _$CollectionToJson(this);
}
