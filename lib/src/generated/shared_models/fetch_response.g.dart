// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchResponse _$FetchResponseFromJson(Map<String, dynamic> json) =>
    FetchResponse(
      vectors: VectorsValue.fromJson(json['vectors'] as Map<String, dynamic>),
      namespace: json['namespace'] as String,
    );

Map<String, dynamic> _$FetchResponseToJson(FetchResponse instance) =>
    <String, dynamic>{
      'vectors': instance.vectors,
      'namespace': instance.namespace,
    };
