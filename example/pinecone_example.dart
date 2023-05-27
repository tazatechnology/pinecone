// ignore_for_file: unused_local_variable, avoid_print
import 'dart:io';
import 'package:pinecone/pinecone.dart';

// Create a client instance with an API key
final client = PineconeClient(
  apiKey: Platform.environment['PINECONE_API_KEY'] ?? '',
);

void main() async {
  final environment = 'us-west1-gcp-free';

  /// List indexes
  final indexes = await client.listIndexes(
    environment: environment,
  );
  print(indexes);

  if (indexes.isEmpty) {
    return;
  }

  /// Describe index
  if (indexes.isNotEmpty) {
    final index = await client.describeIndex(
      environment: environment,
      indexName: indexes.first,
    );
    print(index);
  }

  /// List collections
  final collections = await client.listCollections(
    environment: environment,
  );
  print(collections);

  /// Describe collection
  if (collections.isNotEmpty) {
    final collection = await client.describeCollection(
      environment: environment,
      collectionName: collections.first,
    );
    print(collection);
  }

  client.endSession();
}
