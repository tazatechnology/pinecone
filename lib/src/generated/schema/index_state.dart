// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// OPEN API SPECIFICATION: 3.1.0
// API TITLE: Pinecone API
// API VERSION: 1.1.0

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
