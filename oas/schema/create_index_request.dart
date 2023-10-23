part of 'schema.dart';

/// Create index request object
final schemaCreateIndexRequest = Schema.object(
  required: ['name', 'dimension'],
  properties: {
    'name': Schema.string(
      description: 'The name of the index to be created.',
      example: 'my-index',
      maxLength: 45,
    ),
    'dimension': Schema.integer(
      description: 'The dimensions of the vectors to be inserted in the index.',
      example: 1536,
    ),
    'metric': Schema.enumeration(
      ref: 'SearchMetric',
    ),
    'pods': Schema.integer(
      description:
          'The number of pods for the index to use, including replicas.',
      defaultValue: 1,
      minimum: 1,
    ),
    'replicas': Schema.integer(
      description:
          'The number of replicas. Replicas duplicate your index. They provide higher availability and throughput.',
      defaultValue: 1,
      minimum: 1,
    ),
    'pod_type': Schema.enumeration(
      defaultValue: 'p1.x1',
      ref: 'PodType',
    ),
    'metadata_config': Schema.map(
      description:
          "Configuration for the behavior of Pinecone's internal metadata index.",
      example: {'key': 'value'},
    ),
    'source_collection': Schema.string(
      description: 'The name of the collection to create an index from.',
      example: 'my-collection',
    ),
  },
);
