import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum Environment {
  @JsonValue('us-west1-gcp')
  usWest1Gcp,
  @JsonValue('us-west4-gcp')
  usWest4Gcp,
  @JsonValue('us-central1-gcp')
  usCentral1Gcp,
  @JsonValue('us-east1-gcp')
  usEast1Gcp,
  @JsonValue('us-east4-gcp')
  usEast4Gcp,
  @JsonValue('eu-west1-gcp')
  euWest1Gcp,
  @JsonValue('us-east1-aws')
  usEast1Aws;

  String toJson() => _$EnvironmentEnumMap[this]!;
}

const _$EnvironmentEnumMap = {
  Environment.usWest1Gcp: 'us-west1-gcp',
  Environment.usWest4Gcp: 'us-west4-gcp',
  Environment.usCentral1Gcp: 'us-central1-gcp',
  Environment.usEast1Gcp: 'us-east1-gcp',
  Environment.usEast4Gcp: 'us-east4-gcp',
  Environment.euWest1Gcp: 'eu-west1-gcp',
  Environment.usEast1Aws: 'us-east1-aws',
};
