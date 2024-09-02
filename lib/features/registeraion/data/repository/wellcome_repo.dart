import 'package:dartz/dartz.dart';
import 'package:filmflicks/core/errors/failure.dart';
import 'package:filmflicks/core/success/success.dart';

abstract class WellcomeRepo {
  Future<Either<Failure, Success>> signInWithGoogle();
  Future<Either<Failure, Success>> signInWithFaceBook();
}
