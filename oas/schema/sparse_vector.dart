part of pinecone_schema;

/// Sparse values object
final schemaSparseVector = Schema.object(
  properties: {
    'indices': Schema.array(
      description: 'The indices of the sparse data.',
      items: Schema.integer(
        format: IntegerFormat.int64,
      ),
      minItems: 1,
      maxItems: 1000,
    ),
    'values': Schema.array(
      description:
          'The corresponding values of the sparse data, which must be the same length as the indices.',
      items: Schema.number(),
      minItems: 1,
      maxItems: 1000,
    ),
  },
);
