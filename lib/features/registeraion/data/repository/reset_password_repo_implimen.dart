import 'package:dartz/dartz.dart';
import 'package:filmflicks/core/errors/failure.dart';
import 'package:filmflicks/core/success/success.dart';
import 'package:filmflicks/features/registeraion/data/repository/reset_password_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ResetPasswordRepoImplimen implements ResetPasswordRepo {
  final FirebaseAuth firebaseAuth;

  ResetPasswordRepoImplimen(this.firebaseAuth);
  @override
  Future<Either<Failure, Success>> resetPassword(
      {required String code, required String newPassword}) async {
    try {
      await firebaseAuth.confirmPasswordReset(
          code: code, newPassword: newPassword);
          return  Right(Success( successMessage: 'Password reset successfully'));
    } catch (e) {
      return Left(AuthError(e.toString()));
    }
  }
}
