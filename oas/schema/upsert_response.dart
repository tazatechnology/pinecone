part of pinecone_schema;

/// Vector query response object
final schemaUpsertResponse = Schema.object(
  properties: {
    'upsertedCount': Schema.integer(
      description: 'The number of vectors upserted.',
    ),
  },
);
