part of 'social_auth_cubit.dart';


abstract class SocialAuthCubitState {}

final class WellcomeSignInGoogleInitial extends SocialAuthCubitState {}
final class SocialAuthCubitSuccess extends SocialAuthCubitState {
  final String successMessage;

  SocialAuthCubitSuccess({required this.successMessage});
}

final class SocialAuthGoogleCubitLoading extends SocialAuthCubitState {}
final class SocialAuthFaceBookCubitLoading extends SocialAuthCubitState {}

final class SocialAuthCubitFailure extends SocialAuthCubitState {
  final String errMessage;

  SocialAuthCubitFailure({required this.errMessage});
}

