part of 'api.dart';

/// Fetch vectors operation
final fetchVectors = Operation(
  tags: [vectorTag.name],
  summary: 'Fetch vectors',
  description: 'Looks up and returns vectors, by ID, from a single namespace.',
  id: 'fetch_vectors',
  parameters: [
    Parameter.query(
      name: 'ids',
      required: true,
      description: 'The vector IDs to fetch.',
      schema: Schema.array(
        items: Schema.string(),
      ),
    ),
    Parameter.query(
      name: 'namespace',
      description: 'Option to fetch from a single namespace',
      schema: Schema.string(),
    )
  ],
  responses: {
    '200': Response(
      description: 'A successful response',
      content: {
        'application/json': MediaType(
          schema: Schema.object(
            ref: 'FetchResponse',
          ),
        ),
      },
    ),
  },
);
