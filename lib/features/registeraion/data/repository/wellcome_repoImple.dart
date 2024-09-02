import 'package:dartz/dartz.dart';
import 'package:filmflicks/core/errors/failure.dart';
import 'package:filmflicks/core/success/success.dart';
import 'package:filmflicks/features/registeraion/data/repository/wellcome_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:google_sign_in/google_sign_in.dart';

class WellcomeRepoimple implements WellcomeRepo {
  final GoogleSignInAccount? googleUser;
  final GoogleSignInAuthentication? googleAuth;

  WellcomeRepoimple(this.googleUser, this.googleAuth);
  @override
  Future<Either<Failure, Success>> signInWithFaceBook() async {
    try {
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      await FirebaseAuth.instance.signInWithCredential(credential);
      return Right(Success(successMessage: "Login Success"));
    } catch (e) {
      return Left(AuthError("Login Field,Please try again"));
    }
  }

  @override
  Future<Either<Failure, Success>> signInWithGoogle() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }
}
