part of 'schema.dart';

/// Vector match object
final schemaVectorMatch = Schema.object(
  required: ['id'],
  properties: {
    'id': vectorId,
    'score': Schema.number(
      description:
          'This is a measure of similarity between this vector and the query vector. The higher the score, the more they are similar.',
    ),
    'values': vectorValues.copyWith(
      description: 'This is the vector data, if it is requested.',
    ),
    'sparseValues': Schema.object(
      description: 'This is the sparse vector data, if it is requested.',
      ref: 'SparseVector',
    ),
    'metadata': Schema.map(
      description: 'This is the metadata, if it is requested.',
    )
  },
);
