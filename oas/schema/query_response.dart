part of 'schema.dart';

/// Vector query response object
final schemaQueryResponse = Schema.object(
  required: ['namespace', 'matches'],
  properties: {
    'namespace': Schema.string(
      description: 'The namespace to query.',
    ),
    'matches': Schema.array(
      description: 'The matches for the vectors.',
      items: Schema.object(
        ref: 'VectorMatch',
      ),
    ),
  },
);
