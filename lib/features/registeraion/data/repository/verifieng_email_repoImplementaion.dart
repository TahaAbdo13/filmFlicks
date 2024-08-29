import 'package:dartz/dartz.dart';
import 'package:filmflicks/core/errors/failure.dart';
import 'package:filmflicks/core/success/success.dart';
import 'package:filmflicks/features/registeraion/data/repository/verifieng_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class VerifiengEmailRepoimplementaion implements VerifiengRepo {
  final FirebaseAuth firebaseAuth;

  VerifiengEmailRepoimplementaion(this.firebaseAuth);
  @override
  Future<Either<Failure, Success>> veriFiengEmail()async {
    try{
     await firebaseAuth.sendPasswordResetEmail(email: email)
    }catch(e){

    }
  }
}
