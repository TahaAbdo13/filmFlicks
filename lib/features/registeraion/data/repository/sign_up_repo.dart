
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:filmflicks/core/errors/failure.dart';
import 'package:filmflicks/core/models/user_model.dart';
import 'package:filmflicks/core/success/success.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class SignUpRepo {
  Future<Either<Failure, Success>> signUp({required UserModel userModel,required FirebaseAuth firebaseAuth,required FirebaseFirestore firebaseFirestore});
  
}
