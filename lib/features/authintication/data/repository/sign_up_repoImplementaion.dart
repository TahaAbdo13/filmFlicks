import 'package:dartz/dartz.dart';
import 'package:filmflicks/core/errors/failure.dart';
import 'package:filmflicks/core/utils/services/api_services.dart';
import 'package:filmflicks/features/authintication/data/models/request_token_model.dart';
import 'package:filmflicks/features/authintication/data/repository/sign_up_repo_interface.dart';

class SignUpRepoimplementaion implements SignUpRepoInterface {
  final ApiServices apiServices;

  SignUpRepoimplementaion({required this.apiServices});
  @override
  Future<Either<Failure, RequestTokenModel>> requestokenMehtod() async {
    try {
      await apiServices.get(
          url: "https://api.themoviedb.org/3/authentication/token/new");
    } catch (e) {}
    throw UnimplementedError();
  }
}
