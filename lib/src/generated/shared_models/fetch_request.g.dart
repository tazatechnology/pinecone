// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchRequest _$FetchRequestFromJson(Map<String, dynamic> json) => FetchRequest(
      ids: (json['ids'] as List<dynamic>).map((e) => e as String).toList(),
      namespace: json['namespace'] as String?,
    );

Map<String, dynamic> _$FetchRequestToJson(FetchRequest instance) =>
    <String, dynamic>{
      'ids': instance.ids,
      'namespace': instance.namespace,
    };
