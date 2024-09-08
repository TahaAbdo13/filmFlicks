import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:filmflicks/core/errors/failure.dart';
import 'package:filmflicks/core/utils/services/api_services.dart';
import 'package:filmflicks/features/authintication/data/models/request_token_model.dart';
import 'package:filmflicks/features/authintication/data/repository/sign_up_repo_interface.dart';
import 'package:uni_links2/uni_links.dart';

class SignUpRepoimplementaion implements SignUpRepoInterface {
  final ApiServices apiServices;

  SignUpRepoimplementaion({required this.apiServices});
  @override
  Future<Either<Failure, RequestTokenModel>> requestokenMehtod() async {
    try {
      Map<String, dynamic> requestTokenData = await apiServices.get(
          url: "https://api.themoviedb.org/3/authentication/token/new",
          authorization:
              "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwYWQ5YTFlMGZlNTNlZjY1ZTdkZjRjN2FmY2JlODBlMSIsIm5iZiI6MTcyNTQ0ODA1OC43MjE5MjQsInN1YiI6IjY2ZDgzY2U2ODZjNmI0Y2QzODI5ZTNiZCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.hvHK_KHjn8z3uP7eAiheerb7hbsfFLMIsvyjzBbXhiw");
      final requestTokenModel = RequestTokenModel.fromjson(requestTokenData);
      return right(requestTokenModel);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerError.fromDioExeption(e: e));
      } else {
        return left(ServerError(errMessage: e.toString()));
      }
    }
  }

  @override
 Future<Either<Failure, RequestTokenModel>> handleDeepLink() async {
  try {
    // الحصول على الـ URI عند فتح التطبيق من خلال Deep Link
    final uri = await getInitialUri();

    // التأكد من أن uri ليس null
    if (uri != null) {
      final requestToken = uri.queryParameters['request_token'];
      final expiresAt = uri.queryParameters['expires_at'];

      // التأكد من أن القيم ليست null
      if (requestToken != null && expiresAt != null) {
        // إنشاء النموذج بعد التحقق من البيانات
        RequestTokenModel requestTokenModel = RequestTokenModel(
          expiresAt: expiresAt,  // التعيين الصحيح لقيمة expires_at
          requestToken: requestToken,  // التعيين الصحيح لقيمة request_token
        );
        return right(requestTokenModel);  // الإرجاع الصحيح
      } else {
        // في حالة وجود بيانات مفقودة
        return left(ServerError(errMessage: 'Missing request_token or expires_at'));
      }
    } else {
      return left(ServerError(errMessage: 'No URI found'));
    }
  } catch (e) {
    return left(ServerError(errMessage: e.toString()));
  }
}

}
