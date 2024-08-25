import 'package:firebase_auth/firebase_auth.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);

}
class ServerError extends Failure{
  ServerError(super.errMessage);
  factory ServerError.firebaseAuhtExeption(FirebaseAuthException firebaseAuthExeption){
    if (firebaseAuthExeption.code == 'weak-password') {
  return ServerError('The password provided is too weak.');
  } else if (firebaseAuthExeption.code == 'email-already-in-use') {
    return ServerError('The account already exists for that email.');
  }else{
    return ServerError(firebaseAuthExeption.message!);
  }
  }

}
