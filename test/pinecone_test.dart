@Timeout(Duration(minutes: 10))
import 'dart:io';
import 'package:pinecone/pinecone.dart';
import 'package:test/test.dart';

void main() async {
  // Initialize a client to use for testing
  PineconeClient client = PineconeClient(apiKey: '');
  String environment = '';
  final String indexName = 'test-index-${client.hashCode}';
  final String collectionName = 'test-collection';
  final String namespaceName = 'test-namespace';
  const int dimension = 10;
  late Index index;

  // Ensure that proper environment variables are defined for testing
  if (!Platform.environment.containsKey('PINECONE_API_KEY')) {
    throw Exception('PINECONE_API_KEY environment variable not set');
  }
  if (!Platform.environment.containsKey('PINECONE_API_ENV')) {
    throw Exception('PINECONE_API_ENV environment variable not set');
  }

  // ==========================================
  // TEST: Setup/Teardown
  // ==========================================

  setUp(() {
    final env = Platform.environment;
    client = PineconeClient(
      apiKey: env['PINECONE_API_KEY'] ?? '',
    );
    environment = env['PINECONE_API_ENV'] ?? '';
  });

  tearDown(() {
    client.endSession();
  });

  // ==========================================
  // TEST: PineconeClient
  // ==========================================

  test('PineconeClient', () {
    assert(client.apiKey.isNotEmpty);
  });

  // ==========================================
  // TEST: Create Index
  // ==========================================

  test('Create Index', () async {
    final indexes = await client.listIndexes(
      environment: environment,
    );

    // Create the new index
    if (!indexes.contains(indexName)) {
      await client.createIndex(
        environment: environment,
        request: CreateIndexRequest(
          name: indexName,
          dimension: dimension,
          metric: SearchMetric.dotproduct,
          pods: 1,
          replicas: 1,
          podType: PodType.p1x1,
        ),
      );
    }

    // Wait for index creation to complete
    index = await client.describeIndex(
      environment: environment,
      indexName: indexName,
    );
    while (index.status.state != IndexState.ready) {
      // ignore: avoid_print
      print("Waiting for index to be created: ${index.status.state.name}");
      await Future.delayed(Duration(seconds: 10));
      index = await client.describeIndex(
        environment: environment,
        indexName: indexName,
      );
    }

    assert(index.projectId.isNotEmpty);
    assert(index.environment.isNotEmpty);
    expect(index.environment, equals(environment));
    expect(index.database.name, equals(indexName));
    expect(index.database.dimension, equals(dimension));

    // Wait for index to be ready for downstream requests
    await Future.delayed(Duration(seconds: 60));
  });

  // ==========================================
  // TEST: Create Collection
  // ==========================================

  test('Create Collection', () async {
    final collections = await client.listCollections(
      environment: environment,
    );

    if (!collections.contains(collectionName)) {
      await client.createCollection(
        environment: environment,
        request: CreateCollectionRequest(
          name: collectionName,
          source: indexName,
        ),
      );
    }

    // Wait for collection creation to complete
    Collection collection = await client.describeCollection(
      environment: environment,
      collectionName: collectionName,
    );
    while (collection.status != CollectionStatus.ready) {
      // ignore: avoid_print
      print("Waiting for collection to be created: ${collection.status.name}");
      await Future.delayed(Duration(seconds: 10));
      collection = await client.describeCollection(
        environment: environment,
        collectionName: collectionName,
      );
    }

    expect(collection.name, equals(collectionName));
    expect(collection.dimension, equals(dimension));
  });

  // ==========================================
  // TEST: Upsert Vectors
  // ==========================================

  test('Upsert Vectors', () async {
    IndexStats indexStats = await client.describeIndexStats(
      indexName: index.name,
      projectId: index.projectId,
      environment: index.environment,
    );

    assert(indexStats.namespaces?.isEmpty == true);
    expect(indexStats.dimension, equals(dimension));
    expect(indexStats.indexFullness, equals(0));
    expect(indexStats.totalVectorCount, equals(0));

    await client.upsertVectors(
      indexName: index.name,
      projectId: index.projectId,
      environment: index.environment,
      request: UpsertRequest(
        namespace: namespaceName,
        vectors: [
          for (var i = 0; i < 10; i++)
            Vector(
              id: 'vector-$i',
              values: List.generate(dimension, (k) => (k + i).toDouble()),
              metadata: {'test-meta': 'test-value-$i'},
            ),
        ],
      ),
    );

    await Future.delayed(Duration(seconds: 5));

    indexStats = await client.describeIndexStats(
      indexName: index.name,
      projectId: index.projectId,
      environment: index.environment,
      request: IndexStatsRequest(),
    );

    assert(indexStats.namespaces?.isEmpty == false);
    expect(indexStats.dimension, equals(dimension));
    expect(indexStats.totalVectorCount, equals(10));
  });

  // ==========================================
  // TEST: Fetch Vectors
  // ==========================================

  test('Fetch Vectors', () async {
    FetchResponse fetchResponse = await client.fetchVectors(
      indexName: index.name,
      projectId: index.projectId,
      environment: index.environment,
      ids: ['vector-0', 'vector-1', 'vector-2'],
    );

    assert(fetchResponse.namespace.isEmpty);
    assert(fetchResponse.vectors.isEmpty);

    fetchResponse = await client.fetchVectors(
      indexName: index.name,
      projectId: index.projectId,
      environment: index.environment,
      namespace: namespaceName,
      ids: ['vector-0', 'vector-1', 'vector-2'],
    );

    expect(fetchResponse.namespace, equals(namespaceName));
    expect(fetchResponse.vectors.length, equals(3));
  });

  // ==========================================
  // TEST: Query Vectors
  // ==========================================

  test('Query Vectors', () async {
    final queryVector = List.generate(dimension, (k) => (k + 1).toDouble());

    // Basic query (no namespace)
    QueryResponse queryResponse = await client.queryVectors(
      indexName: index.name,
      projectId: index.projectId,
      environment: index.environment,
      request: QueryRequest(
        vector: queryVector,
      ),
    );
    assert(queryResponse.matches.isEmpty);

    // Query with namespace
    queryResponse = await client.queryVectors(
      indexName: index.name,
      projectId: index.projectId,
      environment: index.environment,
      request: QueryRequest(
        vector: queryVector,
        namespace: namespaceName,
      ),
    );
    expect(queryResponse.namespace, equals(namespaceName));
    expect(queryResponse.matches.length, equals(10));

    // Query with topK
    queryResponse = await client.queryVectors(
      indexName: index.name,
      projectId: index.projectId,
      environment: index.environment,
      request: QueryRequest(
        vector: queryVector,
        namespace: namespaceName,
        topK: 5,
      ),
    );
    expect(queryResponse.matches.length, equals(5));

    // Query with values and metadata
    queryResponse = await client.queryVectors(
      indexName: index.name,
      projectId: index.projectId,
      environment: index.environment,
      request: QueryRequest(
        vector: queryVector,
        namespace: namespaceName,
        includeValues: true,
        includeMetadata: true,
      ),
    );
    assert(queryResponse.matches.first.metadata?.isNotEmpty == true);

    // Query by vector id
    queryResponse = await client.queryVectors(
      indexName: index.name,
      projectId: index.projectId,
      environment: index.environment,
      request: QueryRequest(
        namespace: namespaceName,
        id: 'vector-0',
      ),
    );
    expect(queryResponse.matches.length, equals(10));

    // Query by bad vector id
    queryResponse = await client.queryVectors(
      indexName: index.name,
      projectId: index.projectId,
      environment: index.environment,
      request: QueryRequest(
        namespace: namespaceName,
        id: 'vector-bad',
      ),
    );
    assert(queryResponse.matches.isEmpty == true);
  });

  // ==========================================
  // TEST: Update Vectors
  // ==========================================

  test('Update Vectors', () async {
    await client.updateVector(
      indexName: index.name,
      projectId: index.projectId,
      environment: index.environment,
      request: UpdateRequest(
        id: 'vector-5',
        namespace: namespaceName,
        values: List.generate(dimension, (k) => 999.9),
        setMetadata: {'test-meta': 'new-meta-value'},
      ),
    );

    FetchResponse fetchResponse = await client.fetchVectors(
      indexName: index.name,
      projectId: index.projectId,
      environment: index.environment,
      namespace: namespaceName,
      ids: ['vector-5'],
    );
    expect(fetchResponse.vectors.length, equals(1));

    final vector = fetchResponse.vectors.values.first;
    expect(vector.id, equals('vector-5'));
    expect(vector.metadata?['test-meta'], equals('new-meta-value'));
    for (var i = 0; i < vector.values.length; i++) {
      expect(vector.values[i], equals(999.9));
    }
  });

  // ==========================================
  // TEST: Delete Vectors
  // ==========================================

  test('Delete Vectors', () async {
    // Delete specified vectors, no namespace
    await client.deleteVectors(
      indexName: index.name,
      projectId: index.projectId,
      environment: index.environment,
      request: DeleteRequest(
        ids: ['vector-0', 'vector-1', 'vector-2'],
      ),
    );

    await Future.delayed(Duration(seconds: 5));

    IndexStats indexStats = await client.describeIndexStats(
      indexName: index.name,
      projectId: index.projectId,
      environment: index.environment,
    );

    expect(indexStats.totalVectorCount, equals(10));

    // Delete specified vectors
    await client.deleteVectors(
      indexName: index.name,
      projectId: index.projectId,
      environment: index.environment,
      request: DeleteRequest(
        namespace: namespaceName,
        ids: ['vector-0', 'vector-1', 'vector-2'],
      ),
    );

    indexStats = await client.describeIndexStats(
      indexName: index.name,
      projectId: index.projectId,
      environment: index.environment,
    );

    expect(indexStats.totalVectorCount, equals(7));

    // Delete all vectors
    await client.deleteVectors(
      indexName: index.name,
      projectId: index.projectId,
      environment: index.environment,
      request: DeleteRequest(
        namespace: namespaceName,
        deleteAll: true,
      ),
    );

    await Future.delayed(Duration(seconds: 5));

    indexStats = await client.describeIndexStats(
      indexName: index.name,
      projectId: index.projectId,
      environment: index.environment,
    );

    expect(indexStats.totalVectorCount, equals(0));
  });

  // ==========================================
  // TEST: Delete Collection
  // ==========================================

  test('Delete collection', () async {
    await client.deleteCollection(
      environment: environment,
      collectionName: collectionName,
    );

    var collections = [collectionName];

    while (collections.contains(collectionName)) {
      // ignore: avoid_print
      print("Waiting for collection to be deleted");
      await Future.delayed(Duration(seconds: 10));
      collections = await client.listCollections(
        environment: environment,
      );
    }
  });

  // ==========================================
  // TEST: Delete Index
  // ==========================================

  test('Delete index', () async {
    await client.deleteIndex(
      environment: environment,
      indexName: indexName,
    );

    index = await client.describeIndex(
      environment: environment,
      indexName: indexName,
    );

    expect(index.status.state, equals(IndexState.terminating));
  });
}
