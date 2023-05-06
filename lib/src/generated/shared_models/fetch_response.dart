import 'package:json_annotation/json_annotation.dart';

import 'vectors_value.dart';

part 'fetch_response.g.dart';

/// The response to a fetch request
@JsonSerializable()
class FetchResponse {
  const FetchResponse({
    required this.vectors,
    required this.namespace,
  });

  factory FetchResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchResponseFromJson(json);

  /// Vectors returned by the fetch request.
  final VectorsValue vectors;

  /// The namespace of the vectors.
  final String namespace;

  Map<String, dynamic> toJson() => _$FetchResponseToJson(this);
}
