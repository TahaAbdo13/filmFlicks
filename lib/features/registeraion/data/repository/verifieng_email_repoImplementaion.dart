import 'package:dartz/dartz.dart';
import 'package:filmflicks/core/errors/failure.dart';
import 'package:filmflicks/core/success/success.dart';
import 'package:filmflicks/features/registeraion/data/repository/verifieng_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class VerifiengEmailRepoimplementaion implements VerifiengRepo {
  final FirebaseAuth firebaseAuth;

  VerifiengEmailRepoimplementaion(this.firebaseAuth);
  @override
  Future<Either<Failure, Success>> veriFiengEmail(
      {required String emailAddress}) async {
    try {
      await firebaseAuth.sendPasswordResetEmail(email: emailAddress);
      return Right(Success(successMessage: "Password send to your email"));
    } catch (e) {
        if (e is FirebaseAuthException) {
        return left(AuthError.firebaseAuhtExeption(e));
      } 
      else {
        return left(AuthError("There was an Error Now, Please try again!"));
      }
    }
  }
}
