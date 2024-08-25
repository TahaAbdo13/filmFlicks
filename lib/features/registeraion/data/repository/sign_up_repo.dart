import 'package:dartz/dartz.dart';
import 'package:filmflicks/core/errors/failure.dart';
import 'package:filmflicks/core/models/user_model.dart';

abstract class SignUpRepo {
  Future<Either<Failure, UserModel>> signUp({required UserModel userModel});
}
