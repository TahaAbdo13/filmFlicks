import 'package:firebase_auth/firebase_auth.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}
class ServerError extends Failure{
  ServerError(String errMessage) : super(errMessage);
  
}



