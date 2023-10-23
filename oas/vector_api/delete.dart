part of 'api.dart';

/// Delete vectors operation
final deleteVectors = Operation(
  tags: [vectorTag.name],
  summary: 'Delete vectors',
  description: 'Deletes vectors, by id, from a single namespace.',
  id: 'delete_vectors',
  requestBody: RequestBody(
    required: true,
    content: {
      'application/json': MediaType(
        schema: Schema.object(ref: 'DeleteRequest'),
      ),
    },
  ),
  responses: {
    '200': Response(
      description: 'A successful response',
    ),
  },
);
