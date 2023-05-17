// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// OPEN API SPECIFICATION: 3.1.0
// API TITLE: Pinecone API
// API VERSION: 6385160b2d80c50016823ac4

part of pinecone_schema;

// ==========================================
// ENUM: CollectionStatus
// ==========================================

/// The current status of the collection
enum CollectionStatus {
  @JsonValue('Initializing')
  initializing,
  @JsonValue('Ready')
  ready,
}
