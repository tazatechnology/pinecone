library pinecone_index_api;

import 'package:openapi_spec/openapi_spec.dart';

part 'configure_index.dart';
part 'create_collection.dart';
part 'create_index.dart';
part 'delete_collection.dart';
part 'delete_index.dart';
part 'describe_collection.dart';
part 'describe_index.dart';
part 'list_collections.dart';
part 'list_indexes.dart';

/// Index operations tags
final indexTag = Tag(
  name: 'Index Operations',
);

/// Index operations sever
final indexServer = Server(
  url: 'https://controller.{environment}.pinecone.io',
  variables: {
    'environment': ServerVariable(
      defaultValue: 'us-west1-gcp-free',
      description: 'The region for your project. See Pinecone console',
    ),
  },
);
