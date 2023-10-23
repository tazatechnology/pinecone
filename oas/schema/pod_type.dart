part of 'schema.dart';

/// An enumeration of the available pod types.
final schemaPodType = Schema.enumeration(
  description: 'An enumeration of the available pod types.',
  example: 'p1.x1',
  values: [
    's1.x1',
    's1.x2',
    's1.x4',
    's1.x8',
    'p1.x1',
    'p1.x2',
    'p1.x4',
    'p1.x8',
    'p2.x1',
    'p2.x2',
    'p2.x4',
    'p2.x8',
  ],
);
