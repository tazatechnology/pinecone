part of pinecone_schema;

/// Index stats object
final schemaIndexStats = Schema.object(
  description: 'Information regarding status of the index.',
  properties: {
    'namespaces': Schema.map(
      description:
          'A mapping for each namespace in the index from the namespace name to a summary of its contents.',
      valueSchema: Schema.object(
        ref: 'NamespaceStats',
      ),
    ),
    'dimension': Schema.integer(
      description: 'The dimension of the indexed vectors.',
      example: 1536,
    ),
    'indexFullness': Schema.number(
      description:
          'The fullness of the index, regardless of whether a metadata filter expression was passed. The granularity of this metric is 10%.',
      example: 0.5,
    ),
    'totalVectorCount': Schema.integer(
      description: 'Indicator of index readiness.',
      format: IntegerFormat.int64,
    ),
  },
);

/// Index stats object
final schemaNamespaceStats = Schema.object(
  required: ['vectorCount'],
  description: 'A summary of the contents of a namespace.',
  properties: {
    'vectorCount': Schema.integer(
      description: 'The number of vectors stored in this namespace.',
      format: IntegerFormat.int64,
    ),
  },
);
