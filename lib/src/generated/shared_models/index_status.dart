import 'package:json_annotation/json_annotation.dart';

import 'index_state.dart';

part 'index_status.g.dart';

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

  final String host;
  final int port;
  final IndexState state;
  final bool ready;

  Map<String, dynamic> toJson() => _$IndexStatusToJson(this);
}
