import 'package:firebase_auth/firebase_auth.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);

}
class AuthError extends Failure{
  AuthError(super.errMessage);
  factory AuthError.firebaseAuhtExeption(FirebaseAuthException firebaseAuthExeption){
    if (firebaseAuthExeption.code == 'weak-password') {
  return AuthError('The password provided is too weak.');
  } else if (firebaseAuthExeption.code == 'email-already-in-use') {
    return AuthError('The account already exists for that email.');
  }else{
    return AuthError(firebaseAuthExeption.message!);
  }
  }

}
class FirebaseExeptions extends Failure{
  FirebaseExeptions(super.errMessage);

}
