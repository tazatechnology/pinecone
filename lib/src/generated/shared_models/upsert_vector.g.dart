// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upsert_vector.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpsertVector _$UpsertVectorFromJson(Map<String, dynamic> json) => UpsertVector(
      id: json['id'] as String,
      values: (json['values'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      sparseValues: json['sparseValues'] == null
          ? null
          : SparseVectorData.fromJson(
              json['sparseValues'] as Map<String, dynamic>),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$UpsertVectorToJson(UpsertVector instance) =>
    <String, dynamic>{
      'id': instance.id,
      'values': instance.values,
      'sparseValues': instance.sparseValues,
      'metadata': instance.metadata,
    };
