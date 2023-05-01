import 'package:json_annotation/json_annotation.dart';

import 'vectors_value.dart';

part 'fetch_response.g.dart';

@JsonSerializable()
class FetchResponse {
  const FetchResponse({
    required this.vectors,
    required this.namespace,
  });

  factory FetchResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchResponseFromJson(json);

  final VectorsValue vectors;
  final String namespace;

  Map<String, dynamic> toJson() => _$FetchResponseToJson(this);
}
