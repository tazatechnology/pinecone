// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index_database.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IndexDatabase _$IndexDatabaseFromJson(Map<String, dynamic> json) =>
    IndexDatabase(
      name: json['name'] as String,
      metric: $enumDecode(_$IndexMetricEnumMap, json['metric']),
      dimension: json['dimension'] as int,
      replicas: json['replicas'] as int,
      shards: json['shards'] as int,
      pods: json['pods'] as int,
      podType: json['pod_type'] as String?,
    );

Map<String, dynamic> _$IndexDatabaseToJson(IndexDatabase instance) =>
    <String, dynamic>{
      'name': instance.name,
      'metric': instance.metric,
      'dimension': instance.dimension,
      'replicas': instance.replicas,
      'shards': instance.shards,
      'pods': instance.pods,
      'pod_type': instance.podType,
    };

const _$IndexMetricEnumMap = {
  IndexMetric.euclidean: 'euclidean',
  IndexMetric.cosine: 'cosine',
  IndexMetric.dotproduct: 'dotproduct',
};
