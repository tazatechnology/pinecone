part of pinecone_schema;

/// Vector fetch request object
final schemaUpdateRequest = Schema.object(
  required: ['id'],
  properties: {
    'id': vectorId,
    'values': vectorValues,
    'sparseValues': Schema.object(
      description: 'Vector sparse data.',
      ref: 'SparseVector',
    ),
    'setMetadata': Schema.map(
      description: 'Metadata to set for the vector.',
    ),
    'namespace': Schema.string(
      description: 'The namespace containing the vector to update.',
    ),
  },
);
