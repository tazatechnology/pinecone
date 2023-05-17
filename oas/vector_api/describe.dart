part of pinecone_vector_api;

/// Describe index state operation
final describeIndexStats = Operation(
  tags: [vectorTag.name],
  summary: 'Describe index stats',
  description: "This operation returns statistics about the index's contents",
  id: 'describe_index_stats',
  requestBody: RequestBody(
    required: false,
    content: {
      'application/json': MediaType(
        schema: Schema.object(ref: 'IndexStatsRequest'),
      ),
    },
  ),
  responses: {
    '200': Response(
      description: 'A successful response',
      content: {
        'application/json': MediaType(
          schema: Schema.object(ref: 'IndexStats'),
        ),
      },
    ),
  },
);
