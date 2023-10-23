part of 'api.dart';

/// List collections operation
final listCollections = Operation(
  tags: [indexTag.name],
  summary: 'List collections',
  description: 'List all collections in your project.',
  id: 'list_collections',
  responses: {
    '200': Response(
      description:
          'This operation returns a list of all the collections in your current project.',
      content: {
        'application/json': MediaType(
          schema: Schema.array(
            items: Schema.string(),
          ),
          example: ['my-collection1', 'my-collection2'],
        ),
      },
    ),
  },
);
