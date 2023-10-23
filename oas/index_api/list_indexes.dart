part of 'api.dart';

/// List indexes operation
final listIndexes = Operation(
  tags: [indexTag.name],
  summary: 'List indexes',
  description: 'This operation returns a list of your Pinecone indexes.',
  id: 'list_indexes',
  responses: {
    '200': Response(
      description: 'This operation returns a list of all the indexes.',
      content: {
        'application/json': MediaType(
          schema: Schema.array(
            items: Schema.string(),
          ),
          example: ['my-index', 'my-index2'],
        ),
      },
    ),
  },
);
