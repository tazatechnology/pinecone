// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryRequest _$QueryRequestFromJson(Map<String, dynamic> json) => QueryRequest(
      topK: json['topK'] as int,
      namespace: json['namespace'] as String?,
      filter: json['filter'] as Map<String, dynamic>?,
      includeValues: json['includeValues'] as bool? ?? false,
      includeMetadata: json['includeMetadata'] as bool? ?? false,
      vector: (json['vector'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      sparseVector: json['sparseVector'] == null
          ? null
          : SparseVectorData.fromJson(
              json['sparseVector'] as Map<String, dynamic>),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$QueryRequestToJson(QueryRequest instance) =>
    <String, dynamic>{
      'namespace': instance.namespace,
      'topK': instance.topK,
      'filter': instance.filter,
      'includeValues': instance.includeValues,
      'includeMetadata': instance.includeMetadata,
      'vector': instance.vector,
      'sparseVector': instance.sparseVector,
      'id': instance.id,
    };
