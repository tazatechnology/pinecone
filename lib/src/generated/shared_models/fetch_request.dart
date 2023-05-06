import 'package:json_annotation/json_annotation.dart';

part 'fetch_request.g.dart';

/// Operation looks up and returns vectors, by id, from a single namespace.
@JsonSerializable()
class FetchRequest {
  const FetchRequest({
    required this.ids,
    this.namespace,
  });

  factory FetchRequest.fromJson(Map<String, dynamic> json) =>
      _$FetchRequestFromJson(json);

  final List<String> ids;

  /// The namespace of the vectors.
  final String? namespace;

  Map<String, dynamic> toJson() => _$FetchRequestToJson(this);
}
