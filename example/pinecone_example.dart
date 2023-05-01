// ignore_for_file: unused_local_variable
import 'dart:io';
import 'package:pinecone/pinecone.dart';

// Create a client instance with an API key
final client = PineconeClient(
  apiKey: Platform.environment['PINECONE_API_KEY'] ?? '',
  environment: 'us-west1-gcp-free',
);

void main() async {
  // List indexes
  List<String> indexNames = await client.index.listIndexes();

  // List collections
  List<String> collectionNames = await client.index.listCollections();

  // Create a new index
  if (indexNames.isEmpty) {
    final indexNameToCreate = 'my-index';
    await client.index.createIndex(
      body: IndexDefinition(
        name: indexNameToCreate,
        dimension: 1536,
      ),
    );

    // Poll index until it's ready
    bool creating = true;
    while (creating) {
      print("Waiting for index to be created...");
      await Future.delayed(Duration(seconds: 10));
      final index = await client.index.describeIndex(
        indexName: indexNameToCreate,
      );
      creating = index.status.state != IndexState.ready;
    }
  }

  // Get the latest indexes
  indexNames = await client.index.listIndexes();
  print(indexNames);

  // Describe an index
  final indexMeta = await client.index.describeIndex(
    indexName: indexNames.first,
  );
  print(indexMeta.database.toJson());
  print(indexMeta.status.toJson());

  // Create a collection
  if (collectionNames.isEmpty) {
    await client.index.createCollection(
      body: CollectionDefinition(
        name: 'my-collection',
        source: indexNames.first,
      ),
    );
  }

  // Get the latest collections
  collectionNames = await client.index.listCollections();
  print(collectionNames);

  // Describe a collection
  final collection = await client.index.describeCollection(
    collectionName: collectionNames.first,
  );
  print(collection.toJson());

  // Create sample vector data
  final vectorData =
      List.generate(indexMeta.database.dimension, (i) => i.toDouble());

  // Add a vectors to an index and namespace
  final upsertRes = await client.vector(host: indexMeta.status.host).upsert(
        body: UpsertRequest(
          vectors: [
            for (int i = 0; i < 5; i++)
              UpsertVector(
                id: DateTime.now().toString(),
                values: vectorData,
              ),
          ],
          namespace: 'my-namespace',
        ),
      );
  print(upsertRes.toJson());

  // Query the vector database
  final queryRes = await client.vector(host: indexMeta.status.host).query(
        body: QueryRequest(
          topK: 5,
          namespace: 'my-namespace',
          vector: vectorData,
        ),
      );
  print(queryRes.toJson());

  if (queryRes.matches.isNotEmpty) {
    print(queryRes.matches.first.toJson());
  }

  client.endSession();
}
