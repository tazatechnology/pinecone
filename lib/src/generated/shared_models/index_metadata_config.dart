import 'package:json_annotation/json_annotation.dart';

part 'index_metadata_config.g.dart';

/// Configuration for the behavior of Pinecone's internal metadata index. By default, all metadata is indexed; when metadata_config is present, only specified metadata fields are indexed.
@JsonSerializable()
class IndexMetadataConfig {
  const IndexMetadataConfig({
    required this.indexed,
  });

  factory IndexMetadataConfig.fromJson(Map<String, dynamic> json) =>
      _$IndexMetadataConfigFromJson(json);

  final List<String> indexed;

  Map<String, dynamic> toJson() => _$IndexMetadataConfigToJson(this);
}
