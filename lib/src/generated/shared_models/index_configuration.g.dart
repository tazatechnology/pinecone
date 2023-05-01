// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IndexConfiguration _$IndexConfigurationFromJson(Map<String, dynamic> json) =>
    IndexConfiguration(
      replicas: json['replicas'] as int? ?? 1,
      podType: json['pod_type'] as String?,
    );

Map<String, dynamic> _$IndexConfigurationToJson(IndexConfiguration instance) =>
    <String, dynamic>{
      'replicas': instance.replicas,
      'pod_type': instance.podType,
    };
