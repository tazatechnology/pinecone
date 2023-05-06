import 'package:json_annotation/json_annotation.dart';

import 'query_match.dart';

part 'query_response.g.dart';

/// The response to a query request
@JsonSerializable()
class QueryResponse {
  const QueryResponse({
    required this.matches,
    required this.namespace,
  });

  factory QueryResponse.fromJson(Map<String, dynamic> json) =>
      _$QueryResponseFromJson(json);

  final List<QueryMatch> matches;

  /// The namespace for the vectors.
  final String namespace;

  Map<String, dynamic> toJson() => _$QueryResponseToJson(this);
}
