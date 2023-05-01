// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IndexStatus _$IndexStatusFromJson(Map<String, dynamic> json) => IndexStatus(
      host: json['host'] as String,
      port: json['port'] as int,
      state: $enumDecode(_$IndexStateEnumMap, json['state']),
      ready: json['ready'] as bool,
    );

Map<String, dynamic> _$IndexStatusToJson(IndexStatus instance) =>
    <String, dynamic>{
      'host': instance.host,
      'port': instance.port,
      'state': instance.state,
      'ready': instance.ready,
    };

const _$IndexStateEnumMap = {
  IndexState.initializing: 'Initializing',
  IndexState.scalingUp: 'ScalingUp',
  IndexState.scalingDown: 'ScalingDown',
  IndexState.terminating: 'Terminating',
  IndexState.ready: 'Ready',
};
