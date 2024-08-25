
import 'package:dartz/dartz.dart';
import 'package:filmflicks/core/errors/failure.dart';
import 'package:filmflicks/core/models/user_model.dart';
import 'package:filmflicks/core/success/success.dart';

abstract class SignUpRepo {
  Future<Either<Failure, Success>> signUp({required UserModel userModel});
}
