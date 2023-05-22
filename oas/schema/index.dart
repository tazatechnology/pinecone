part of pinecone_schema;

/// Index object
final schemaIndex = Schema.object(
  required: ['database', 'status'],
  properties: {
    'database': Schema.object(
      ref: 'IndexDatabase',
    ),
    'status': Schema.object(
      ref: 'IndexStatus',
    ),
  },
);
