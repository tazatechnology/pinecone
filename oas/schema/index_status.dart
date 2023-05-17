part of pinecone_schema;

/// Index status object
final schemaIndexStatus = Schema.object(
  required: [
    'host',
    'port',
    'state',
    'ready',
  ],
  description: 'Information regarding status of the index.',
  properties: {
    'host': Schema.string(
      description: 'The host of the index.',
      example: 'my-index-abc123.svc.us-west1-gcp.pinecone.io',
    ),
    'port': Schema.integer(
      description: 'The port of this index.',
      example: 1,
    ),
    'state': Schema.enumeration(
      ref: 'IndexState',
    ),
    'ready': Schema.boolean(
      description: 'Indicator of index readiness.',
    ),
  },
);
