part of 'schema.dart';

/// Vector fetch response object
final schemaFetchResponse = Schema.object(
  required: ['namespace', 'vectors'],
  properties: {
    'namespace': Schema.string(
      description: 'The namespace to the vectors.',
    ),
    'vectors': Schema.map(
      description: 'The matches for the vectors.',
      valueSchema: Schema.object(
        ref: 'Vector',
      ),
    ),
  },
);
