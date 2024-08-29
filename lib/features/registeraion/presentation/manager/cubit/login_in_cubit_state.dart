part of 'login_in_cubit_cubit.dart';


abstract class LoginInCubitState {}

final class LoginInCubitInitial extends LoginInCubitState {}

final class LogInCubitSuccess extends LoginInCubitState {
  final String successMessage;

  LogInCubitSuccess({required this.successMessage});
}

final class LogInCubitLoading extends LoginInCubitState {}

final class LogInCubitFailure extends LoginInCubitState {
  final String errMessage;

  LogInCubitFailure({required this.errMessage});
}
