import 'package:json_annotation/json_annotation.dart';

import 'index_database.dart';
import 'index_status.dart';

part 'index.g.dart';

/// Configuration information and deployment status of the index
@JsonSerializable()
class Index {
  const Index({
    required this.database,
    required this.status,
  });

  factory Index.fromJson(Map<String, dynamic> json) => _$IndexFromJson(json);

  /// Summary of index properties and metadata
  final IndexDatabase database;

  /// The status of the index.
  final IndexStatus status;

  Map<String, dynamic> toJson() => _$IndexToJson(this);
}
