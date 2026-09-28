import 'package:bookly/core/utils/api_consts.dart';
import 'package:bookly/core/utils/api_consumer.dart';
import 'package:dio/dio.dart';

class DioServices extends ApiConsumer {
  final Dio dio;
  DioServices(this.dio) {
    _initDio();
  }

  void _initDio() {
    dio.options.baseUrl = ApiConsts.baseUrl;
    dio.options.connectTimeout = const Duration(seconds: 15);
    dio.options.receiveTimeout = const Duration(seconds: 15);
  }

  @override
  Future<Map<String, dynamic>> get(
      {required String endpoint,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? body,
      Map<String, dynamic>? headers}) async {
    Response response = await dio.get(
      endpoint,
      queryParameters: queryParameters,
      data: body,
      options: Options(headers: headers),
    );
    return response.data;
  }
}
