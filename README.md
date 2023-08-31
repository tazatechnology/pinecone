![Header](https://github.com/tazatechnology/pinecone/raw/main/assets/header-image.png)

# pinecone

[![Pub](https://img.shields.io/pub/v/pinecone.svg)](https://pub.dev/packages/pinecone)
[![Publish](https://github.com/tazatechnology/pinecone/actions/workflows/publish.yaml/badge.svg)](https://github.com/tazatechnology/pinecone/actions/workflows/publish.yaml)

[pinecone](https://pub.dev/packages/pinecone) is an unofficial Dart client for your managed [Pinecone](https://www.pinecone.io/) vector database instance.

## Is this package actively maintained?

Yes! This package is used in production applications and is actively maintained!

## API Reference

For detailed API information, please see the official [Pinecone API reference](https://docs.pinecone.io/reference). This package is a thin wrapper around the official API and aims to have full parity with the official API.

This Dart client was generated using the [openapi_spec](https://pub.dev/packages/openapi_spec) package by mirroring the implementation details defined in the [Pinecone API](https://docs.pinecone.io/reference).

## Client Instance

To create a client instance you simply need the API key for your Pinecone project. You can find your API key in the [Pinecone console](https://app.pinecone.io/).

```dart
final client = PineconeClient(
  apiKey: '123-456-789',
);
```

## Index Operations

All index operations require an `environment` parameter which is used to route to the appropriate host:

```sh
https://controller.{environment}.pinecone.io
```

You can find your environment name in the [Pinecone console](https://app.pinecone.io/).

### List Indexes

[Official Documentation: `list_indexes`](https://docs.pinecone.io/reference/list_indexes)

```dart
List<String> indexes = await client.listIndexes(
  environment: environment,
);
```

### Create Index

[Official Documentation: `create_index`](https://docs.pinecone.io/reference/create_index)

```dart
await client.createIndex(
  environment: environment,
  request: CreateIndexRequest(
    name: indexName,
    dimension: dimension,
    metric: SearchMetric.cosine,
    pods: 1,
    replicas: 1,
    podType: PodType.p1x1,
  ),
);
```

### Describe Index

[Official Documentation: `describe_index`](https://docs.pinecone.io/reference/describe_index)

```dart
Index index = await client.describeIndex(
  environment: environment,
  indexName: indexName,
);
```

### Delete Index

[Official Documentation: `delete_index`](https://docs.pinecone.io/reference/delete_index)

```dart
await client.deleteIndex(
  environment: environment,
  indexName: indexName,
);
```

### Configure Index

[Official Documentation: `configure_index`](https://docs.pinecone.io/reference/configure_index)

```dart
await client.configureIndex(
  environment: environment,
  indexName: indexName,
  request: ConfigureIndexRequest(
    replicas: 2,
    podType: PodType.p2x2,
  )
);
```

### List Collections

[Official Documentation: `list_collections`](https://docs.pinecone.io/reference/list_collections)

```dart
List<String> collections await client.listCollections(
  environment: environment,
);
```

### Create Collection

[Official Documentation: `create_collection`](https://docs.pinecone.io/reference/create_collection)

```dart
await client.createCollection(
  environment: environment,
  request: CreateCollectionRequest(
    name: collectionName,
    source: indexName,
  ),
);
```

### Describe Collection

[Official Documentation: `describe_collection`](https://docs.pinecone.io/reference/describe_collection)

```dart
Collection collection = await client.describeCollection(
  environment: environment,
  collectionName: collectionName,
);
```

### Delete Collection

[Official Documentation: `delete_collection`](https://docs.pinecone.io/reference/delete_collection)

```dart
await client.deleteCollection(
  environment: environment,
  collectionName: collectionName,
);
```

## Vector Operations

All vector operations require the `indexName`, `projectId`, and `environment` parameters which determine the appropriate host:

```sh
https://{indexName}-{projectId}.svc.{environment}.pinecone.io
```

For convenience, each of these components can be retrieved from the `Index` object:

```dart
final Index index = await client.describeIndex(
  indexName: indexName,
);

final indexName =  index.name;
final projectId =  index.projectId;
final environment = index.environment;
```

To retrieve the full host URL, you can use the `status` property:

```dart
final String host = index.status.host;
```

### Describe Index Stats

[Official Documentation: `describe_index_stats`](https://docs.pinecone.io/reference/describe_index_stats_post)

```dart
IndexStats indexStats = await client.describeIndexStats(
  indexName: index.name,
  projectId: index.projectId,
  environment: index.environment,
);
```

### Query

[Official Documentation: `query`](https://docs.pinecone.io/reference/query)

```dart
QueryResponse queryResponse = await client.queryVectors(
  indexName: index.name,
  projectId: index.projectId,
  environment: index.environment,
  request: QueryRequest(
    vector: queryVector,
  ),
);
```

### Delete

[Official Documentation: `delete`](https://docs.pinecone.io/reference/delete)

```dart
await client.deleteVectors(
  indexName: index.name,
  projectId: index.projectId,
  environment: index.environment,
  request: DeleteRequest(
    ids: ['vector-0', 'vector-1', 'vector-2'],
  ),
);
```

### Fetch

[Official Documentation: `fetch`](https://docs.pinecone.io/reference/fetch)

```dart
FetchResponse fetchResponse = await client.fetchVectors(
  indexName: index.name,
  projectId: index.projectId,
  environment: index.environment,
  ids: ['vector-0', 'vector-1', 'vector-2'],
);
```

### Update

[Official Documentation: `update`](https://docs.pinecone.io/reference/update)

```dart
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
```

### Upsert

[Official Documentation: `upsert`](https://docs.pinecone.io/reference/upsert)

```dart
UpsertResponse upsertResponse = await client.upsertVectors(
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
```

## Contributing

Please see the [pinecone Github repository](https://github.com/tazatechnology/pinecone). Feel free to open an issue to report bugs or request new features.
