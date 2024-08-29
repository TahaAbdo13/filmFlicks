import 'package:dartz/dartz.dart';
import 'package:filmflicks/core/errors/failure.dart';
import 'package:filmflicks/core/success/success.dart';

abstract class LoginRepo {

Future<Either<Failure,Success>>login();


}
