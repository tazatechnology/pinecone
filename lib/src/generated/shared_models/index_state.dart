import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum IndexState {
  @JsonValue('Initializing')
  initializing,
  @JsonValue('ScalingUp')
  scalingUp,
  @JsonValue('ScalingDown')
  scalingDown,
  @JsonValue('Terminating')
  terminating,
  @JsonValue('Ready')
  ready;

  String toJson() => _$IndexStateEnumMap[this]!;
}

const _$IndexStateEnumMap = {
  IndexState.initializing: 'Initializing',
  IndexState.scalingUp: 'ScalingUp',
  IndexState.scalingDown: 'ScalingDown',
  IndexState.terminating: 'Terminating',
  IndexState.ready: 'Ready',
};
