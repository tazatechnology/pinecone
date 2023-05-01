import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum IndexMetric {
  @JsonValue('euclidean')
  euclidean,
  @JsonValue('cosine')
  cosine,
  @JsonValue('dotproduct')
  dotproduct;

  String toJson() => _$IndexMetricEnumMap[this]!;
}

const _$IndexMetricEnumMap = {
  IndexMetric.euclidean: 'euclidean',
  IndexMetric.cosine: 'cosine',
  IndexMetric.dotproduct: 'dotproduct',
};
