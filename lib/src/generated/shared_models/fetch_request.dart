import 'package:json_annotation/json_annotation.dart';

part 'fetch_request.g.dart';

@JsonSerializable()
class FetchRequest {
  const FetchRequest({
    required this.ids,
    this.namespace,
  });

  factory FetchRequest.fromJson(Map<String, dynamic> json) =>
      _$FetchRequestFromJson(json);

  final List<String> ids;
  final String? namespace;

  Map<String, dynamic> toJson() => _$FetchRequestToJson(this);
}
