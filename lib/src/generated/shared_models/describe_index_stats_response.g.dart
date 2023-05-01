// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_index_stats_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DescribeIndexStatsResponse _$DescribeIndexStatsResponseFromJson(
        Map<String, dynamic> json) =>
    DescribeIndexStatsResponse(
      namespaces:
          NamespacesValue.fromJson(json['namespaces'] as Map<String, dynamic>),
      dimension: json['dimension'] as int,
      indexFullness: (json['indexFullness'] as num).toDouble(),
      totalVectorCount: json['totalVectorCount'] as int,
    );

Map<String, dynamic> _$DescribeIndexStatsResponseToJson(
        DescribeIndexStatsResponse instance) =>
    <String, dynamic>{
      'namespaces': instance.namespaces,
      'dimension': instance.dimension,
      'indexFullness': instance.indexFullness,
      'totalVectorCount': instance.totalVectorCount,
    };
