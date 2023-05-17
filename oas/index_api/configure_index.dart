part of pinecone_index_api;

/// Configure index operation
final configureIndex = Operation(
  tags: [indexTag.name],
  summary: 'Configure index',
  description:
      'This operation specifies the pod type and number of replicas for an index.',
  id: 'configure_index',
  requestBody: RequestBody(
    description: 'Index configuration options',
    required: true,
    content: {
      'application/json': MediaType(
        schema: Schema.object(ref: 'ConfigureIndexRequest'),
      ),
    },
  ),
  responses: {
    '202': Response(
      description: 'The index has been successfully updated.',
    ),
    '400': Response(
      description: 'Bad request, not enough quota.',
    ),
    '404': Response(
      description: 'Index not found.',
    ),
    '500': Response(
      description: 'Internal error. Can be caused by invalid parameters.',
    ),
  },
);
