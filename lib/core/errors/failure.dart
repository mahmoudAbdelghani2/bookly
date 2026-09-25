import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure({required this.message});
}

class ServerFailure extends Failure {
  ServerFailure({required super.message});

  factory ServerFailure.fromDioError(e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(message: 'Connection timeout with API server');
      case DioExceptionType.sendTimeout:
        return ServerFailure(message: 'Send timeout with API server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(message: 'Receive timeout with API server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            e.response!.statusCode, e.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(message: 'Request to API server was cancelled');
      case DioExceptionType.unknown:
        if (e.message.contains('SocketException')) {
          return ServerFailure(message: 'No Internet connection');
        }
        return ServerFailure(message: 'Unexpected error occurred');
    }
    return ServerFailure(
        message: 'An error occurred while communicating with the server');
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(message: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(message: 'Resource not found');
    } else if (statusCode == 500) {
      return ServerFailure(message: 'Internal server error');
    } else {
      return ServerFailure(
          message: 'Received invalid status code: $statusCode');
    }
  }
}
