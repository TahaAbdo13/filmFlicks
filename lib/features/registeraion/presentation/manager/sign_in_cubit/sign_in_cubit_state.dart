part of 'sign_in_cubit_cubit.dart';

abstract class SignInCubitState {}

final class SignInCubitInitial extends SignInCubitState {}

final class SignInCubitSuccess extends SignInCubitState {
  final String successMessage;

  SignInCubitSuccess({required this.successMessage});
}

final class SignInCubitLoading extends SignInCubitState {}

final class SignInCubitFailure extends SignInCubitState {
  final String errMessage;

  SignInCubitFailure({required this.errMessage});
}
