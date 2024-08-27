import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:filmflicks/core/errors/failure.dart';
import 'package:filmflicks/core/models/user_model.dart';
import 'package:filmflicks/core/success/success.dart';
import 'package:filmflicks/features/registeraion/data/repository/sign_up_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpRepoimple implements SignUpRepo {
  // FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  // FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  @override
  Future<Either<Failure, Success>> signUp(
      {required UserModel userModel,
      required FirebaseAuth firebaseAuthe,
      required FirebaseFirestore firebaseFirestore}) async {
    try {
      await firebaseAuthe.createUserWithEmailAndPassword(
          email: userModel.emailAddress, password: userModel.password);
      userModel = UserModel(
          name: userModel.name,
          emailAddress: userModel.emailAddress,
          password: userModel.password);
      await firebaseFirestore
          .collection("users")
          .doc(firebaseAuthe.currentUser!.uid)
          .set(userModel.convertModelTOMap(userModel: userModel));
      firebaseAuthe.currentUser!.sendEmailVerification();
      return right(
          Success(successMessage: "Your Acount is Created Successfully"));
    } catch (e) {
      if (e is FirebaseAuthException) {
        return left(AuthError.firebaseAuhtExeption(e));
      } else {
        return left(AuthError("There was an Error Now, Please try again!"));
      }
    }
  }
}
