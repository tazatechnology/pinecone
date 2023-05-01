// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vectors_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VectorsValue _$VectorsValueFromJson(Map<String, dynamic> json) => VectorsValue(
      additionalProperties: (json['additionalProperties'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$VectorsValueToJson(VectorsValue instance) =>
    <String, dynamic>{
      'additionalProperties': instance.additionalProperties,
    };
