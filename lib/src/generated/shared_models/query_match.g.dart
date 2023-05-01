// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_match.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryMatch _$QueryMatchFromJson(Map<String, dynamic> json) => QueryMatch(
      id: json['id'] as String,
      score: (json['score'] as num?)?.toDouble(),
      values: (json['values'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      sparseValues: json['sparseValues'] == null
          ? null
          : SparseVectorData.fromJson(
              json['sparseValues'] as Map<String, dynamic>),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$QueryMatchToJson(QueryMatch instance) =>
    <String, dynamic>{
      'id': instance.id,
      'score': instance.score,
      'values': instance.values,
      'sparseValues': instance.sparseValues,
      'metadata': instance.metadata,
    };
