import 'package:dartz/dartz.dart';
import 'package:filmflicks/core/errors/failure.dart';
import 'package:filmflicks/core/success/success.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class ResetPasswordRepo {
  final FirebaseAuth firebaseAuth;

  ResetPasswordRepo(this.firebaseAuth);
  Future<Either<Failure,Success>>resetPassword({required String emailAddress});
}