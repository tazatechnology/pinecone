part of pinecone_schema;

/// Create collection request object
final schemaConfigureIndexRequest = Schema.object(
  properties: {
    'replicas': Schema.integer(
      description: 'The desired number of replicas for the index.',
      defaultValue: 1,
      minimum: 1,
    ),
    'pod_type': Schema.enumeration(
      ref: 'PodType',
    ),
  },
);
