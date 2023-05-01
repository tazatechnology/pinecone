import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../shared_models/collection.dart';
import '../shared_models/collection_definition.dart';
import '../shared_models/index.dart';
import '../shared_models/index_configuration.dart';
import '../shared_models/index_definition.dart';

part 'index_operations_client.g.dart';

@RestApi()
abstract class IndexOperationsClient {
  factory IndexOperationsClient(Dio dio, {String baseUrl}) =
      _IndexOperationsClient;

  @GET('/collections')
  Future<List<String>> listCollections();

  @POST('/collections')
  Future<void> createCollection({
    @Body() required CollectionDefinition body,
  });

  @GET('/collections/{collectionName}')
  Future<Collection> describeCollection({
    @Path('collectionName') required String collectionName,
  });

  @DELETE('/collections/{collectionName}')
  Future<void> deleteCollection();

  @GET('/databases')
  Future<List<String>> listIndexes();

  @POST('/databases')
  Future<void> createIndex({
    @Body() required IndexDefinition body,
  });

  @GET('/databases/{indexName}')
  Future<Index> describeIndex({
    @Path('indexName') required String indexName,
  });

  @DELETE('/databases/{indexName}')
  Future<void> deleteIndex();

  @PATCH('/databases/{indexName}')
  Future<void> configureIndex({
    @Body() required IndexConfiguration body,
  });
}
