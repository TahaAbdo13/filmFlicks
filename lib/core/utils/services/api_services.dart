import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio;

  ApiServices({required this.dio});
  Future<dynamic> get({required String url , String? authorization}) async {
    if(authorization!=null){
      dio.options.headers = {
        'Authorization':"Bearer $authorization",
      };
    }
    
    var request = await dio.get(url);
    Map<String, dynamic> requestData = request.data;
    return requestData;
  }
}
