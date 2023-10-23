part of 'schema.dart';

/// An enumeration of the current index state.
final schemaIndexState = Schema.enumeration(
  description: 'The current state of a index.',
  unknownValue: 'Terminating',
  values: [
    'Initializing',
    'ScalingUp',
    'ScalingDown',
    'Terminating',
    'Ready',
  ],
);
