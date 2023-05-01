// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Collection _$CollectionFromJson(Map<String, dynamic> json) => Collection(
      name: json['name'] as String,
      dimension: json['dimension'] as int,
      status: json['status'] as String,
      size: json['size'] as int?,
    );

Map<String, dynamic> _$CollectionToJson(Collection instance) =>
    <String, dynamic>{
      'name': instance.name,
      'dimension': instance.dimension,
      'size': instance.size,
      'status': instance.status,
    };
