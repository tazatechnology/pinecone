library pinecone_vector_api;

import 'package:openapi_spec/openapi_spec.dart';

part 'describe.dart';
part 'query.dart';
part 'delete.dart';
part 'fetch.dart';
part 'update.dart';
part 'upsert.dart';

/// Vector operations tags
final vectorTag = Tag(
  name: 'Vector Operations',
);

/// Vector operations sever
final vectorServer = Server(
  url: 'https://{index_name}-{project_id}.svc.{environment}.pinecone.io',
  variables: {
    'index_name': ServerVariable(
      defaultValue: '',
      description: 'The name of your index. See Pinecone console.',
    ),
    'project_id': ServerVariable(
      defaultValue: '',
      description: 'The id of your project. See Pinecone console.',
    ),
    'environment': ServerVariable(
      defaultValue: '',
      description: 'The region for your project. See Pinecone console',
    ),
  },
);
