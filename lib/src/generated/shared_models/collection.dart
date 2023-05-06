import 'package:json_annotation/json_annotation.dart';

part 'collection.g.dart';

/// Object container for collection information
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

  /// The name of the collection
  final String name;

  /// The dimension of the vectors within the collection.
  final int dimension;

  /// The size of the collection in bytes.
  final int? size;

  /// The status of the collection.
  final String status;

  Map<String, dynamic> toJson() => _$CollectionToJson(this);
}
