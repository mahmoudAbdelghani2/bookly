import 'package:bookly/core/utils/api_consumer.dart';
import 'package:dio/dio.dart';

class DioServices extends ApiConsumer {
  final Dio _dio;
  final baseUrl = 'https://www.googleapis.com/books/v1/';
  DioServices(this._dio);
  @override
  Future<Map<String, dynamic>> get(
      {required String endpoint,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? body,
      Map<String, dynamic>? headers}) async {
    Response response = await _dio.get('$baseUrl$endpoint');
    return response.data;
  }
}
