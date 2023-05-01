import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../shared_models/delete_request.dart';
import '../shared_models/delete_response.dart';
import '../shared_models/describe_index_stats_request.dart';
import '../shared_models/describe_index_stats_response.dart';
import '../shared_models/fetch_request.dart';
import '../shared_models/fetch_response.dart';
import '../shared_models/query_request.dart';
import '../shared_models/query_response.dart';
import '../shared_models/update_request.dart';
import '../shared_models/update_response.dart';
import '../shared_models/upsert_request.dart';
import '../shared_models/upsert_response.dart';

part 'vector_operations_client.g.dart';

@RestApi()
abstract class VectorOperationsClient {
  factory VectorOperationsClient(Dio dio, {String baseUrl}) =
      _VectorOperationsClient;

  @POST('/describe_index_stats')
  Future<DescribeIndexStatsResponse> describeIndexStats({
    @Body() required DescribeIndexStatsRequest body,
  });

  @POST('/query')
  Future<QueryResponse> query({
    @Body() required QueryRequest body,
  });

  @POST('/vectors/delete')
  Future<DeleteResponse> delete({
    @Body() required DeleteRequest body,
  });

  @POST('/vectors/fetch')
  Future<FetchResponse> fetch({
    @Body() required FetchRequest body,
  });

  @POST('/vectors/update')
  Future<UpdateResponse> update({
    @Body() required UpdateRequest body,
  });

  @POST('/vectors/upsert')
  Future<UpsertResponse> upsert({
    @Body() required UpsertRequest body,
  });
}
