import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerError extends Failure {
  ServerError({required String errMessage}) : super(errMessage);
factory  ServerError.fromDioExeption({required DioException e}) {
   switch (e.type) {
  case DioExceptionType.connectionTimeout:
    return ServerError(errMessage: 'Connection timeout. Please check your internet connection.');
  case DioExceptionType.sendTimeout:
    return ServerError(errMessage: 'Request send timeout. Please try again later.');
  case DioExceptionType.receiveTimeout:
    return ServerError(errMessage: 'Response timeout. Server took too long to respond.');
  case DioExceptionType.badCertificate:
    return ServerError(errMessage: 'Bad certificate. There might be a security issue.');
  case DioExceptionType.badResponse:
    return ServerError(errMessage: 'Bad response from the server. Please try again later.');
  case DioExceptionType.cancel:
    return ServerError(errMessage: 'Request was cancelled.');
  case DioExceptionType.connectionError:
    return ServerError(errMessage: 'Connection error. Please check your network.');
  case DioExceptionType.unknown:
    return ServerError(errMessage: 'An unknown error occurred. Please try again.');
}
  }
}
