part of 'api.dart';

/// Update vectors operation
final updateVector = Operation(
  tags: [vectorTag.name],
  summary: 'Update vector',
  description: 'Updates vector in a namespace',
  id: 'update_vector',
  requestBody: RequestBody(
    required: true,
    content: {
      'application/json': MediaType(
        schema: Schema.object(ref: 'UpdateRequest'),
      ),
    },
  ),
  responses: {
    '200': Response(
      description: 'A successful response',
    ),
  },
);
