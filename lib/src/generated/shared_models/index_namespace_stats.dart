import 'package:json_annotation/json_annotation.dart';

part 'index_namespace_stats.g.dart';

/// The index namespace statistics
@JsonSerializable()
class IndexNamespaceStats {
  const IndexNamespaceStats({
    required this.vectorCount,
  });

  factory IndexNamespaceStats.fromJson(Map<String, dynamic> json) =>
      _$IndexNamespaceStatsFromJson(json);

  /// The total number of vectors in namespace
  final int vectorCount;

  Map<String, dynamic> toJson() => _$IndexNamespaceStatsToJson(this);
}
