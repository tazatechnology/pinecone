// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IndexDefinition _$IndexDefinitionFromJson(Map<String, dynamic> json) =>
    IndexDefinition(
      name: json['name'] as String,
      dimension: json['dimension'] as int,
      pods: json['pods'] as int? ?? 1,
      replicas: json['replicas'] as int? ?? 1,
      metric: $enumDecodeNullable(_$IndexMetricEnumMap, json['metric']),
      podType: json['pod_type'] as String?,
      metadataConfig: json['metadata_config'] == null
          ? null
          : IndexMetadataConfig.fromJson(
              json['metadata_config'] as Map<String, dynamic>),
      sourceCollection: json['source_collection'] as String?,
    );

Map<String, dynamic> _$IndexDefinitionToJson(IndexDefinition instance) =>
    <String, dynamic>{
      'name': instance.name,
      'dimension': instance.dimension,
      'metric': instance.metric,
      'pods': instance.pods,
      'replicas': instance.replicas,
      'pod_type': instance.podType,
      'metadata_config': instance.metadataConfig,
      'source_collection': instance.sourceCollection,
    };

const _$IndexMetricEnumMap = {
  IndexMetric.euclidean: 'euclidean',
  IndexMetric.cosine: 'cosine',
  IndexMetric.dotproduct: 'dotproduct',
};
