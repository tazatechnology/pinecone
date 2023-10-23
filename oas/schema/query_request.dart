part of 'schema.dart';

/// Vector query request object
final schemaQueryRequest = Schema.object(
  properties: {
    'namespace': Schema.string(
      description: 'The namespace to query.',
    ),
    'topK': Schema.integer(
      description: 'The number of results to return for each query.',
      example: 10,
      defaultValue: 10,
      minimum: 1,
      maximum: 10000,
    ),
    'filter': Schema.map(
      description:
          'The filter to apply. You can use vector metadata to limit your search.',
      example: {'key': 'value'},
    ),
    'includeValues': Schema.boolean(
      description:
          'Indicates whether vector values are included in the response.',
      defaultValue: false,
    ),
    'includeMetadata': Schema.boolean(
      description:
          'Indicates whether metadata is included in the response as well as the ids.',
      defaultValue: false,
    ),
    'vector': vectorValues.copyWith(
      description:
          'The query vector. This should be the same length as the dimension of the index being queried.',
    ),
    'sparseVector': Schema.object(
      description:
          'Vector sparse data. Represented as a list of indices and a list of corresponded values, which must be the same length.',
      ref: 'SparseVector',
    ),
    'id': vectorId.copyWith(
      description: 'The unique ID of the vector to be used as a query vector.',
    ),
  },
);
