// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryResponse _$QueryResponseFromJson(Map<String, dynamic> json) =>
    QueryResponse(
      matches: (json['matches'] as List<dynamic>)
          .map((e) => QueryMatch.fromJson(e as Map<String, dynamic>))
          .toList(),
      namespace: json['namespace'] as String,
    );

Map<String, dynamic> _$QueryResponseToJson(QueryResponse instance) =>
    <String, dynamic>{
      'matches': instance.matches,
      'namespace': instance.namespace,
    };
