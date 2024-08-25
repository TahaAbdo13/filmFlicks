abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);

}
class ServerError extends Failure{
  ServerError(super.errMessage);

}
