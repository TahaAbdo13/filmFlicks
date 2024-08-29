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
      {required String emailAddress})async {
    
    try{
await firebaseAuth.confirmPasswordReset(code: code, newPassword: newPassword)
      

    }catch(e){

    }
    


  }
}
