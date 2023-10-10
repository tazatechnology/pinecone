// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: invalid_annotation_target
part of pinecone_schema;

// ==========================================
// ENUM: IndexState
// ==========================================

/// The current state of a index.
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
  ready,
}
