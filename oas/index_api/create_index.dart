part of 'api.dart';

/// Create index operation
final createIndex = Operation(
  tags: [indexTag.name],
  summary: 'Create index',
  description: 'This operation creates a Pinecone index.',
  id: 'create_index',
  requestBody: RequestBody(
    required: true,
    content: {
      'application/json': MediaType(
        schema: Schema.object(ref: 'CreateIndexRequest'),
      ),
    },
  ),
  responses: {
    '201': Response(
      description: 'The index has been successfully created.',
    ),
    '400': Response(
      description:
          'Bad request. Encountered when request exceeds quota or an invalid index name.',
    ),
    '409': Response(
      description: 'Index of given name already exists.',
    ),
    '500': Response(
      description: 'Internal error. Can be caused by invalid parameters.',
    ),
  },
);
