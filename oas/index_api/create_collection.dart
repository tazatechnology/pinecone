part of 'api.dart';

/// Create collection operation
final createCollection = Operation(
  tags: [indexTag.name],
  summary: 'Create collection',
  description: 'This operation creates a Pinecone collection.',
  id: 'create_collection',
  requestBody: RequestBody(
    required: true,
    content: {
      'application/json': MediaType(
        schema: Schema.object(ref: 'CreateCollectionRequest'),
      ),
    },
  ),
  responses: {
    '201': Response(
      description: 'The collection has been successfully created.',
    ),
    '400': Response(
      description:
          'Bad request. Request exceeds quota or collection name is invalid.',
    ),
    '409': Response(
      description: 'A collection with the name provided already exists.',
    ),
    '500': Response(
      description: 'Internal error. Can be caused by invalid parameters.',
    ),
  },
);
