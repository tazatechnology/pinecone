part of 'schema.dart';

/// Create collection request object
final schemaDeleteRequest = Schema.object(
  properties: {
    'ids': Schema.array(
      description: 'Vectors to delete, by id.',
      items: Schema.string(),
      maxItems: 1000,
    ),
    'deleteAll': Schema.boolean(
      description:
          'This indicates that all vectors in the index namespace should be deleted.',
      example: false,
    ),
    'namespace': Schema.string(
      description: 'The namespace to delete vectors from, if applicable.',
      example: 'my-namespace',
    ),
    'filter': Schema.map(
      description:
          'If specified, the metadata filter here will be used to select the vectors to delete.',
      example: {'key': 'value'},
    ),
  },
);
