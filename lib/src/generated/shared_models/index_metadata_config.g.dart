// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index_metadata_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IndexMetadataConfig _$IndexMetadataConfigFromJson(Map<String, dynamic> json) =>
    IndexMetadataConfig(
      indexed:
          (json['indexed'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$IndexMetadataConfigToJson(
        IndexMetadataConfig instance) =>
    <String, dynamic>{
      'indexed': instance.indexed,
    };
