part of pinecone_schema;

/// Vector fetch request object
final schemaUpsertRequest = Schema.object(
  required: ['vectors'],
  properties: {
    'vectors': Schema.array(
      description: 'An array containing the vectors to upsert.',
      items: Schema.object(
        ref: 'Vector',
      ),
    ),
    'namespace': Schema.string(
      description: 'This is the namespace name where you upsert vectors.',
    ),
  },
);
