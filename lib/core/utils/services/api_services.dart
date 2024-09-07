import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio;

  ApiServices({required this.dio});
  Future<dynamic> get({required String url}) async {
    var request = await dio.get(url);
    Map<String, dynamic> requestData = request.data;
    return requestData;
  }
}
