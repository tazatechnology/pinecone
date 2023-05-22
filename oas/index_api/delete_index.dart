part of pinecone_index_api;

/// Delete index operation
final deleteIndex = Operation(
  tags: [indexTag.name],
  summary: 'Delete index',
  description: 'This operation deletes an existing index.',
  id: 'delete_index',
  responses: {
    '202': Response(
      description: 'The index has been successfully deleted.',
    ),
    '404': Response(
      description: 'Index not found.',
    ),
    '500': Response(
      description: 'Internal error. Can be caused by invalid parameters.',
    ),
  },
);
