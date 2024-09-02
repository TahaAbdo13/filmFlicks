import 'package:dartz/dartz.dart';
import 'package:filmflicks/core/errors/failure.dart';
import 'package:filmflicks/core/success/success.dart';
import 'package:filmflicks/features/registeraion/data/repository/wellcome_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class WellcomeRepoimple implements WellcomeRepo {
  WellcomeRepoimple();
  @override
  Future<Either<Failure, Success>> signInWithFaceBook() async {
    throw ("");
  }

  @override
  Future<Either<Failure, Success>> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      await FirebaseAuth.instance.signInWithCredential(credential);
      return Right(Success(successMessage: "Login Success"));
    } catch (e) {
      return Left(AuthError(e.toString()));
    }
  }
}
