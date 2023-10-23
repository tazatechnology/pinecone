part of 'api.dart';

/// Delete collection operation
final deleteCollection = Operation(
  tags: [indexTag.name],
  summary: 'Delete collection',
  description: 'This operation deletes an existing collection.',
  id: 'delete_collection',
  responses: {
    '202': Response(
      description: 'The collection has been successfully deleted.',
    ),
    '404': Response(
      description: 'Collection not found.',
    ),
    '500': Response(
      description: 'Internal error. Can be caused by invalid parameters.',
    ),
  },
);
