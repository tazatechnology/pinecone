import 'package:json_annotation/json_annotation.dart';

import 'index_database.dart';
import 'index_status.dart';

part 'index.g.dart';

@JsonSerializable()
class Index {
  const Index({
    required this.database,
    required this.status,
  });

  factory Index.fromJson(Map<String, dynamic> json) => _$IndexFromJson(json);

  final IndexDatabase database;
  final IndexStatus status;

  Map<String, dynamic> toJson() => _$IndexToJson(this);
}
