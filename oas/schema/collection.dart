part of 'schema.dart';

/// Collection object
final schemaCollection = Schema.object(
  required: ['name', 'status', 'dimension'],
  properties: {
    'name': Schema.string(
      description: 'The name of the collection.',
      example: 'my-collection',
    ),
    'status': Schema.enumeration(
      ref: 'CollectionStatus',
    ),
    'size': Schema.integer(
      description: 'The size of the collection in bytes.',
      example: 1000,
    ),
    'dimension': Schema.integer(
      description: 'The dimensionality of the collection.',
      example: 1536,
    ),
  },
);
