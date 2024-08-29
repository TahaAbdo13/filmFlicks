import 'package:dartz/dartz.dart';
import 'package:filmflicks/core/errors/failure.dart';
import 'package:filmflicks/core/success/success.dart';

abstract class VerifiengRepo {
  Future<Either<Failure, Success>> veriFiengEmail({required String emailAddress});
}
