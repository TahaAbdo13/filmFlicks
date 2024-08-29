import 'package:dartz/dartz.dart';
import 'package:filmflicks/core/errors/failure.dart';
import 'package:filmflicks/core/success/success.dart';


abstract class ResetPasswordRepo {
 
  Future<Either<Failure,Success>>resetPassword({required String code,required String newPassword});
}