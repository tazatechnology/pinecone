part of pinecone_vector_api;

/// Upsert vectors operation
final upsertVectors = Operation(
  tags: [vectorTag.name],
  summary: 'Upsert vectors',
  description:
      'Writes vectors into a namespace. If a new value is upserted for an existing vector id, it will overwrite the previous value.',
  id: 'upsert_vectors',
  requestBody: RequestBody(
    required: true,
    content: {
      'application/json': MediaType(
        schema: Schema.object(ref: 'UpsertRequest'),
      ),
    },
  ),
  responses: {
    '200': Response(
      description: 'A successful response',
      content: {
        'application/json': MediaType(
          schema: Schema.object(
            ref: 'UpsertResponse',
          ),
        ),
      },
    ),
  },
);
