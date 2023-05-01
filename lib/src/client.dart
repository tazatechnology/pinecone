import 'package:dio/dio.dart';
import 'generated/vector_operations/vector_operations_client.dart';
import 'generated/index_operations/index_operations_client.dart';

/// Pinecone client
class PineconeClient {
  PineconeClient({
    required String apiKey,
    required String environment,
  }) {
    _dio = Dio(
      BaseOptions(
        headers: {
          'API-KEY': apiKey,
          'ACCEPT': 'application/json; charset=utf-8'
        },
        persistentConnection: true,
      ),
    );

    index = IndexOperationsClient(
      _dio,
      baseUrl: 'https://controller.$environment.pinecone.io',
    );
  }

  /// Instance of Dio client
  late final Dio _dio;

  /// Instance of vector operations client
  late final IndexOperationsClient index;

  /// Instance of vector operations client
  VectorOperationsClient vector({required String host}) {
    String baseUrl;
    if (Uri.parse(host).hasScheme) {
      baseUrl = Uri.https(Uri.parse(host).host).toString();
    } else {
      baseUrl = Uri.https(host).toString();
    }
    return VectorOperationsClient(_dio, baseUrl: baseUrl);
  }

  /// End the client session
  void endSession() {
    _dio.close(force: true);
  }
}
