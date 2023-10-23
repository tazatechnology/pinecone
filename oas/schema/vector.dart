part of 'schema.dart';

/// Vector identifier
final vectorId = Schema.string(
  description: 'The unique identifier of the vector.',
  example: 'example-vector-1',
  minLength: 1,
  maxLength: 512,
);

/// Vector values
final vectorValues = Schema.array(
  description: 'The vector values',
  items: Schema.number(),
  minItems: 1,
  maxItems: 20000,
);

/// Vector object
final schemaVector = Schema.object(
  required: ['id', 'values'],
  properties: {
    'id': vectorId,
    'values': vectorValues,
    'sparseValues': Schema.object(
      description: 'Sparse vector data for this vector.',
      ref: 'SparseVector',
    ),
    'metadata': Schema.map(
      description: 'Metadata associated with this vector.',
    )
  },
);
