part of 'sign_up_cubit.dart';

abstract class SignUpState {}

final class SignUpInitial extends SignUpState {}

final class SignUpCubitLoading extends SignUpState {}

final class SignUpCubitSuccess extends SignUpState {
  final RequestTokenModel requestTokenModel;

  SignUpCubitSuccess({required this.requestTokenModel});
}

final class SignUpCubitFailure extends SignUpState {
  final String errMessage;

  SignUpCubitFailure({required this.errMessage});
}
