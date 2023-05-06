import 'package:json_annotation/json_annotation.dart';

import 'index_state.dart';

part 'index_status.g.dart';

/// The status of an index.
@JsonSerializable()
class IndexStatus {
  const IndexStatus({
    required this.host,
    required this.port,
    required this.state,
    required this.ready,
  });

  factory IndexStatus.fromJson(Map<String, dynamic> json) =>
      _$IndexStatusFromJson(json);

  /// The URL of the host for this index
  final String host;

  /// The port of this index
  final int port;

  /// The index state
  final IndexState state;

  /// Indicator of index readiness
  final bool ready;

  Map<String, dynamic> toJson() => _$IndexStatusToJson(this);
}
