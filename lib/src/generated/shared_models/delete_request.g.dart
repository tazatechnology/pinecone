// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteRequest _$DeleteRequestFromJson(Map<String, dynamic> json) =>
    DeleteRequest(
      ids: (json['ids'] as List<dynamic>).map((e) => e as String).toList(),
      deleteAll: json['deleteAll'] as bool? ?? false,
      namespace: json['namespace'] as String,
      filter: json['filter'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$DeleteRequestToJson(DeleteRequest instance) =>
    <String, dynamic>{
      'ids': instance.ids,
      'deleteAll': instance.deleteAll,
      'namespace': instance.namespace,
      'filter': instance.filter,
    };
