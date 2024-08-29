part of 'verifieng_cubit_cubit.dart';


abstract class VerifiengCubitState {}

final class VerifiengCubitInitial extends VerifiengCubitState {}
final class VerifiengCubitSuccess extends VerifiengCubitState {
  final String successMessage;

  VerifiengCubitSuccess({required this.successMessage});
}

final class VerifiengCubitLoading extends VerifiengCubitState {}

final class VerifiengCubitFailure extends VerifiengCubitState {
  final String errMessage;

  VerifiengCubitFailure({required this.errMessage});
}
