// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// OPEN API SPECIFICATION: 3.1.0
// API TITLE: Pinecone API
// API VERSION: 1.1.0

part of pinecone_schema;

// ==========================================
// ENUM: SearchMetric
// ==========================================

/// The vector similarity metric of the index.
enum SearchMetric {
  @JsonValue('euclidean')
  euclidean,
  @JsonValue('cosine')
  cosine,
  @JsonValue('dotproduct')
  dotproduct,
}
