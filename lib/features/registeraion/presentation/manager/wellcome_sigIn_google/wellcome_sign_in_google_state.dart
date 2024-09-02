part of 'wellcome_sign_in_google_cubit.dart';


abstract class WellcomeSignInGoogleState {}

final class WellcomeSignInGoogleInitial extends WellcomeSignInGoogleState {}
final class WellcomeSignInGoogleCubitSuccess extends WellcomeSignInGoogleState {
  final String successMessage;

  WellcomeSignInGoogleCubitSuccess({required this.successMessage});
}

final class WellcomeSignInGoogleCubitLoading extends WellcomeSignInGoogleState {}

final class WellcomeSignInGoogleCubitFailure extends WellcomeSignInGoogleState {
  final String errMessage;

  WellcomeSignInGoogleCubitFailure({required this.errMessage});
}

