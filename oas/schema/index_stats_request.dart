part of pinecone_schema;

/// Described index statistics request object
final schemaIndexStatsRequest = Schema.object(
  properties: {
    'filter': Schema.map(
      description:
          'If defined, the operation only returns statistics for vectors that satisfy the filter.',
    ),
  },
);
