// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upsert_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpsertRequest _$UpsertRequestFromJson(Map<String, dynamic> json) =>
    UpsertRequest(
      vectors: (json['vectors'] as List<dynamic>)
          .map((e) => UpsertVector.fromJson(e as Map<String, dynamic>))
          .toList(),
      namespace: json['namespace'] as String?,
    );

Map<String, dynamic> _$UpsertRequestToJson(UpsertRequest instance) =>
    <String, dynamic>{
      'vectors': instance.vectors,
      'namespace': instance.namespace,
    };
