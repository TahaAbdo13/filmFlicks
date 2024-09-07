import 'package:dartz/dartz.dart';
import 'package:filmflicks/core/errors/failure.dart';
import 'package:filmflicks/features/authintication/data/models/request_token_model.dart';
import 'package:filmflicks/features/authintication/data/repository/sign_up_repo_interface.dart';

class SignUpRepoimplementaion implements SignUpRepoInterface {
  @override
  Future<Either<Failure, RequestTokenModel>> requestokenMehtod() {
  
    throw UnimplementedError();
  }
}