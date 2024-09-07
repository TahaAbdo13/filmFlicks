import 'package:dartz/dartz.dart';
import 'package:filmflicks/core/errors/failure.dart';
import 'package:filmflicks/features/authintication/data/models/request_token_model.dart';

abstract class SignUpRepoInterface {
  Future<Either<Failure, RequestTokenModel>> requestokenMehtod();
}
