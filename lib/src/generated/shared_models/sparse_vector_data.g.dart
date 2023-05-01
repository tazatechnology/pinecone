// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sparse_vector_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SparseVectorData _$SparseVectorDataFromJson(Map<String, dynamic> json) =>
    SparseVectorData(
      indices: (json['indices'] as List<dynamic>).map((e) => e as int).toList(),
      values: (json['values'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$SparseVectorDataToJson(SparseVectorData instance) =>
    <String, dynamic>{
      'indices': instance.indices,
      'values': instance.values,
    };
