// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateRequest _$UpdateRequestFromJson(Map<String, dynamic> json) =>
    UpdateRequest(
      id: json['id'] as String,
      values: (json['values'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      sparseValues: json['sparseValues'] == null
          ? null
          : SparseVectorData.fromJson(
              json['sparseValues'] as Map<String, dynamic>),
      setMetadata: json['setMetadata'],
      namespace: json['namespace'] as String?,
    );

Map<String, dynamic> _$UpdateRequestToJson(UpdateRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'values': instance.values,
      'sparseValues': instance.sparseValues,
      'setMetadata': instance.setMetadata,
      'namespace': instance.namespace,
    };
