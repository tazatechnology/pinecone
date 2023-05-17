part of pinecone_index_api;

/// Describe collection operation
final describeCollection = Operation(
  tags: [indexTag.name],
  summary: 'Describe collection',
  description: 'Get a description of a collection.',
  id: 'describe_collection',
  responses: {
    '200': Response(
      description:
          'Configuration information and deployment status of the index.',
      content: {
        'application/json': MediaType(
          schema: Schema.object(ref: 'Collection'),
        ),
      },
    ),
    '404': Response(
      description: 'Collection not found.',
    ),
    '500': Response(
      description: 'Internal error. Can be caused by invalid parameters.',
    ),
  },
);
