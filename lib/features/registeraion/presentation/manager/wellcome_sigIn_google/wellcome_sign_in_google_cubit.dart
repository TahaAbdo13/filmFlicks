import 'package:bloc/bloc.dart';
import 'package:filmflicks/features/registeraion/data/repository/wellcome_repoImple.dart';
part 'wellcome_sign_in_google_state.dart';

class WellcomeSignInGoogleCubit extends Cubit<WellcomeSignInGoogleState> {
  final WellcomeRepoimple wellcomeRepoimple;
  WellcomeSignInGoogleCubit(this.wellcomeRepoimple)
      : super(WellcomeSignInGoogleInitial());

  Future signInWithGoogle() async {
    emit(WellcomeSignInGoogleCubitLoading());
    var result = await wellcomeRepoimple.signInWithGoogle();
    result.fold((failure) {
      emit(WellcomeSignInGoogleCubitFailure(errMessage: failure.errMessage));
    }, (success) {
      emit(WellcomeSignInGoogleCubitSuccess(
          successMessage: success.successMessage));
    });
  }
}
