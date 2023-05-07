# pinecone

[![Pub](https://img.shields.io/pub/v/pinecone.svg)](https://pub.dev/packages/pinecone)
[![Publish](https://github.com/tazatechnology/pinecone/actions/workflows/publish.yaml/badge.svg)](https://github.com/tazatechnology/pinecone/actions/workflows/publish.yaml)

[pinecone](https://pub.dev/packages/pinecone) is an unofficial Dart client for your managed [Pinecone](https://www.pinecone.io/) vector database instance.

## Is this package actively maintained?

Yes! This package is used in production applications and is actively maintained!

## API Reference

For detailed API information, please see the official [Pinecone API reference](https://docs.pinecone.io/reference). This package is a thin wrapper around the official API and aims to have full parity with the official API.

## Client Instance

To create a client instance you will need your API key and the environment name of your Pinecone project. You can find your API key and project environment in the [Pinecone console](https://app.pinecone.io/).

```dart
final client = PineconeClient(
  apiKey: '123-456-789',
  environment: 'us-west1-gcp-free',
);
```

Once the client is created, you can access the index and vector operations APIs respectively:

```dart
// Access the index operations API
client.index;

// Access the vector operations API
client.vector(host:host);
```

## Index Operations

### List Indexes

[Official Documentation: `list_indexes`](https://docs.pinecone.io/reference/list_indexes)

```dart
List<String> names = await client.index.listIndexes();
```

### Create Index

[Official Documentation: `create_index`](https://docs.pinecone.io/reference/create_index)

```dart
await client.index.createIndex(
  body: IndexDefinition(
    name: 'my-index',
    dimension: 1536,
  ),
);
```

### Describe Index

[Official Documentation: `describe_index`](https://docs.pinecone.io/reference/describe_index)

```dart
final Index index = await client.index.describeIndex(
  indexName: 'my-index',
);
```

### Delete Index

[Official Documentation: `delete_index`](https://docs.pinecone.io/reference/delete_index)

```dart
await client.index.deleteIndex(
  indexName: 'my-index',
);
```

### Configure Index

[Official Documentation: `configure_index`](https://docs.pinecone.io/reference/configure_index)

```dart
await client.index.configureIndex(
  body: IndexConfiguration(
    podType: 's1.x2',
    replicas: 3,
  ),
);
```

### List Collections

[Official Documentation: `list_collections`](https://docs.pinecone.io/reference/list_collections)

```dart
List<String> names = await client.index.listCollections();
```

### Create Collection

[Official Documentation: `create_collection`](https://docs.pinecone.io/reference/create_collection)

```dart
await client.index.createCollection(
  body: CollectionDefinition(
    name: 'my-collection',
    source: 'my-index'
  ),
);
```

### Describe Collection

[Official Documentation: `describe_collection`](https://docs.pinecone.io/reference/describe_collection)

```dart
final Collection collection = await client.index.describeCollection(
  collectionName: 'my-collection'
);
```

### Delete Collection

[Official Documentation: `delete_collection`](https://docs.pinecone.io/reference/delete_collection)

```dart
await client.index.deleteCollection(
  collectionName: 'my-collection'
);
```

## Vector Operations

In order to use the vector operations API, you must provide the host name of your specified index. The host name will look something like the following:

```sh
my-index-e345e78.svc.us-west1-gcp-free.pinecone.io
```

To retrieve the host name, you can use the `describeIndex` method:

```dart
final Index index = await client.index.describeIndex(
  indexName: 'my-index',
);

// The host name is the `status.host` property
final String host = index.status.host;
```

### Describe Index Stats

[Official Documentation: `describe_index_stats_post`](https://docs.pinecone.io/reference/describe_index_stats_post)

```dart
final DescribeIndexStatsResponse res =
    await client.vector(host: host).describeIndexStats(
          body: DescribeIndexStatsRequest(),
        );
```

### Query

[Official Documentation: `query`](https://docs.pinecone.io/reference/query)

```dart
final QueryResponse res = await client.vector(host: host).query(
      body: QueryRequest(
        topK: 5,
        namespace: 'my-namespace',
        includeValues: false,
        includeMetadata: false,
        vector: [1, 2, 3],
      ),
    );
```

### Delete

[Official Documentation: `delete`](https://docs.pinecone.io/reference/delete)

```dart
final DeleteResponse res = await client.vector(host: host).delete(
      body: DeleteRequest(
        ids: ['id-1', 'id-2', 'id-3'],
        namespace: 'my-namespace',
      ),
    );
```

### Fetch

[Official Documentation: `fetch`](https://docs.pinecone.io/reference/fetch)

```dart
final FetchResponse res = await client.vector(host: host).fetch(
      body: FetchRequest(
        ids: [],
        namespace: 'my-namespace',
      ),
    );
```

### Update

[Official Documentation: `update`](https://docs.pinecone.io/reference/update)

```dart
final UpdateResponse res = await client.vector(host: host).update(
      body: UpdateRequest(
        id: 'id-1',
        namespace: 'my-namespace',
        values: [1, 2, 3],
      ),
    );
```

### Upsert

[Official Documentation: `upsert`](https://docs.pinecone.io/reference/upsert)

```dart
final UpsertResponse res = await client.vector(host: host).upsert(
      body: UpsertRequest(
        vectors: [
          UpsertVector(
            id: 'id-1',
            values: [1, 2, 3],
          ),
          UpsertVector(
            id: 'id-2',
            values: [4, 5, 6],
          ),
        ],
        namespace: 'my-namespace',
      ),
    );
```

## Contributing

Please see the [pinecone Github repository](https://github.com/tazatechnology/pinecone).
