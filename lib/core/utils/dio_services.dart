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

    // dio.interceptors.add(
    //   InterceptorsWrapper(
    //     onRequest: (options, handler) async {
    //       String? token = await CacheHelper.getToken();
    //       if (token != null && token.isNotEmpty) {
    //         options.headers['Authorization'] = 'Bearer $token';
    //       }
    //       handler.next(options);
    //     },
    //     onError: (DioException e, handler) {
    //       handler.next(e);
    //     },
    //   ),
    // );
  }

  @override
  Future<Map<String, dynamic>> get(
      {required String endpoint,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? body,
      Map<String, dynamic>? headers}) async {
    Response response = await dio.get('${ApiConsts.baseUrl}$endpoint');
    return response.data;
  }
}
