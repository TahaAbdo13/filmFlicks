import 'package:dartz/dartz.dart';
import 'package:filmflicks/core/errors/failure.dart';
import 'package:filmflicks/core/success/success.dart';
import 'package:filmflicks/features/registeraion/data/repository/login_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LogInRepoimple implements LoginRepo {
  final FirebaseAuth firebaseAuth;

  LogInRepoimple(this.firebaseAuth);
  @override
  Future<Either<Failure, Success>> login(
      {required String email, required String password}) async {
    try {
    var credential=  await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
    if(credential.user!.emailVerified){
      return Right(Success( successMessage: 'Login Successfull'));
    }else{
      return  left(AuthError("Please Confirm your email and try again"));
    }
    } catch (e) {
      if (e is FirebaseAuthException) {
        return left(AuthError.firebaseAuhtExeption(e));
      }else{
        return left(AuthError("There Was an Error, please try again"));
      }
    }
  }
}
