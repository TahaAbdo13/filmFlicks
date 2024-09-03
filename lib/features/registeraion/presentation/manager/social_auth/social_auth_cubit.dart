import 'package:bloc/bloc.dart';
import 'package:filmflicks/features/registeraion/data/repository/wellcome_repoImple.dart';
part 'social_auth_cubit_state.dart';

class SocialAuthCubit extends Cubit<SocialAuthCubitState> {
  final WellcomeRepoimple wellcomeRepoimple;
  SocialAuthCubit(this.wellcomeRepoimple)
      : super(WellcomeSignInGoogleInitial());
//=> SignIn With Google
  Future signInWithGoogle() async {
    emit(SocialAuthGoogleCubitLoading());
    var result = await wellcomeRepoimple.signInWithGoogle();
    result.fold((failure) {
      emit(SocialAuthCubitFailure(errMessage: failure.errMessage));
    }, (success) {
      emit(SocialAuthCubitSuccess(
          successMessage: success.successMessage));
    });
  }

  //=> SignIn With FaceBook
  Future signInWithFacebook() async {
    emit(SocialAuthFaceBookCubitLoading());
    var result = await wellcomeRepoimple.signInWithFaceBook();
    result.fold((failure) {
      emit(SocialAuthCubitFailure(errMessage: failure.errMessage));
    }, (success) {
      emit(SocialAuthCubitSuccess(
          successMessage: success.successMessage));
    });
  }



  
}
