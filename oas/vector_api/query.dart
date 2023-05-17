part of pinecone_vector_api;

/// Query vectors operation
final queryVectors = Operation(
  tags: [vectorTag.name],
  summary: 'Query vectors',
  description:
      'Retrieves the ids of the most similar items in a namespace, along with their similarity scores.',
  id: 'query_vectors',
  requestBody: RequestBody(
    required: true,
    content: {
      'application/json': MediaType(
        schema: Schema.object(ref: 'QueryRequest'),
      ),
    },
  ),
  responses: {
    '200': Response(
      description: 'A successful response',
      content: {
        'application/json': MediaType(
          schema: Schema.object(
            ref: 'QueryResponse',
          ),
        ),
      },
    ),
  },
);
