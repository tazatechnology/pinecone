part of pinecone_schema;

/// Index database object
final schemaIndexDatabase = Schema.object(
  required: [
    'name',
    'metric',
    'dimension',
    'replicas',
    'shards',
    'pods',
  ],
  description: 'Summary of index properties and metadata',
  properties: {
    'name': Schema.string(
      description: 'The name of the index.',
      example: 'my-index',
    ),
    'metric': Schema.enumeration(
      ref: 'SearchMetric',
    ),
    'dimension': Schema.integer(
      description: 'The dimension of the index.',
      example: 1536,
    ),
    'replicas': Schema.integer(
      description: 'The number of index replicas.',
      example: 1,
    ),
    'shards': Schema.integer(
      description: 'The number of index shards.',
      example: 1,
    ),
    'pods': Schema.integer(
      description: 'The number of index pods.',
      example: 1,
    ),
    'pod_type': Schema.enumeration(
      ref: 'PodType',
    ),
  },
);
