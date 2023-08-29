import 'package:openapi_spec/openapi_spec.dart';
import 'schema/schema.dart';
import 'index_api/api.dart';
import 'vector_api/api.dart';

main() async {
  /// Create a new OpenAPI spec and customize as needed
  final spec = OpenApi(
    info: Info(
      title: 'Pinecone API',
      // From inspection of the documentation response JSON
      version: '1.1.0',
      contact: Contact(
        name: 'Pinecone.io Ops',
        email: 'support@pinecone.io',
        url: 'https://pinecone.io',
      ),
    ),
    externalDocs: ExternalDocs(
      description: 'More Pinecone.io API docs',
      url: 'https://www.pinecone.io/docs',
    ),
    security: [
      Security(
        name: 'ApiKeyAuth',
      )
    ],
    tags: [vectorTag, indexTag],
    paths: {
      '/collections': PathItem(
        servers: [indexServer],
        get: listCollections,
        post: createCollection,
      ),
      '/collections/{collectionName}': PathItem(
        servers: [indexServer],
        get: describeCollection,
        delete: deleteCollection,
        parameters: [
          Parameter.path(
            ref: 'CollectionName',
          ),
        ],
      ),
      '/databases/': PathItem(
        servers: [indexServer],
        get: listIndexes,
        post: createIndex,
      ),
      '/databases/{indexName}': PathItem(
        servers: [indexServer],
        get: describeIndex,
        delete: deleteIndex,
        patch: configureIndex,
        parameters: [
          Parameter.path(
            ref: 'IndexName',
          ),
        ],
      ),
      '/describe_index_stats': PathItem(
        servers: [vectorServer],
        post: describeIndexStats,
      ),
      '/query': PathItem(
        servers: [vectorServer],
        post: queryVectors,
      ),
      '/vectors/delete': PathItem(
        servers: [vectorServer],
        post: deleteVectors,
      ),
      '/vectors/fetch': PathItem(
        servers: [vectorServer],
        get: fetchVectors,
      ),
      '/vectors/update': PathItem(
        servers: [vectorServer],
        post: updateVector,
      ),
      '/vectors/upsert': PathItem(
        servers: [vectorServer],
        post: upsertVectors,
      ),
    },
    components: Components(
      schemas: {
        'SearchMetric': schemaSearchMetric,
        'PodType': schemaPodType,
        'Index': schemaIndex,
        'IndexState': schemaIndexState,
        'IndexDatabase': schemaIndexDatabase,
        'IndexStatus': schemaIndexStatus,
        'IndexStats': schemaIndexStats,
        'NamespaceStats': schemaNamespaceStats,
        'Collection': schemaCollection,
        'CollectionStatus': schemaCollectionStatus,
        'ConfigureIndexRequest': schemaConfigureIndexRequest,
        'CreateCollectionRequest': schemaCreateCollectionRequest,
        'CreateIndexRequest': schemaCreateIndexRequest,
        'IndexStatsRequest': schemaIndexStatsRequest,
        'DeleteRequest': schemaDeleteRequest,
        'QueryRequest': schemaQueryRequest,
        'QueryResponse': schemaQueryResponse,
        'FetchResponse': schemaFetchResponse,
        'UpdateRequest': schemaUpdateRequest,
        'UpsertRequest': schemaUpsertRequest,
        'UpsertResponse': schemaUpsertResponse,
        'Vector': schemaVector,
        'VectorMatch': schemaVectorMatch,
        'SparseVector': schemaSparseVector,
      },
      parameters: {
        'IndexName': Parameter.path(
          name: 'indexName',
          description: 'Name of the index to operate on.',
          schema: Schema.string(),
        ),
        'CollectionName': Parameter.path(
          name: 'collectionName',
          description: 'Name of the collection to operate on.',
          schema: Schema.string(),
        ),
      },
      securitySchemes: {
        'ApiKeyAuth': SecurityScheme.apiKey(
          name: 'Api-Key',
          description:
              'An API Key is required to call Pinecone APIs. Get yours at https://www.pinecone.io/start/',
          location: ApiKeyLocation.header,
        ),
      },
    ),
  );

  // Convert to a proper OpenAPI spec
  spec.toJsonFile(
    destination: 'oas/openapi.json',
  );

  // Generate schema and client Dart code
  await spec.generate(
    package: 'pinecone',
    destination: 'lib/src/generated/',
    replace: true,
    schemaOptions: SchemaGeneratorOptions(),
    clientOptions: ClientGeneratorOptions(
      enabled: true,
    ),
  );
}
