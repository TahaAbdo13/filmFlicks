part of 'wellcome_sign_in_facebook_cubit.dart';


sealed class WellcomeSignInFacebookState {}

final class WellcomeSignInFacebookInitial extends WellcomeSignInFacebookState {}
final class WellcomeSignInFacebookCubitSuccess extends WellcomeSignInFacebookState {
  final String successMessage;

  WellcomeSignInFacebookCubitSuccess({required this.successMessage});
}

final class WellcomeSignInFacebookCubitLoading extends WellcomeSignInFacebookState {}

final class WellcomeSignInFacebookCubitFailure extends WellcomeSignInFacebookState {
  final String errMessage;

  WellcomeSignInFacebookCubitFailure({required this.errMessage});
}

