part of pinecone_schema;

/// An enumeration of the available pod types.
final schemaSearchMetric = Schema.enumeration(
  description: 'The vector similarity metric of the index.',
  defaultValue: 'cosine',
  values: [
    'euclidean',
    'cosine',
    'dotproduct',
  ],
);
