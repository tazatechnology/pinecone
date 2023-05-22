part of pinecone_index_api;

/// Describe index operation
final describeIndex = Operation(
  tags: [indexTag.name],
  summary: 'Describe index',
  description: 'Get a description of an index.',
  id: 'describe_index',
  responses: {
    '200': Response(
      description:
          'Configuration information and deployment status of the index.',
      content: {
        'application/json': MediaType(
          schema: Schema.object(ref: 'Index'),
        ),
      },
    ),
    '404': Response(
      description: 'Index not found.',
    ),
    '500': Response(
      description: 'Internal error. Can be caused by invalid parameters.',
    ),
  },
);
