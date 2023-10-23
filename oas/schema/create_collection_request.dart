part of 'schema.dart';

/// Create collection request object
final schemaCreateCollectionRequest = Schema.object(
  required: ['name', 'source'],
  properties: {
    'name': Schema.string(
      description: 'The name of the collection to create.',
      example: 'my-collection',
    ),
    'source': Schema.string(
      description:
          'The name of the index to use as the source of the collection.',
      example: 'my-index',
    ),
  },
);
