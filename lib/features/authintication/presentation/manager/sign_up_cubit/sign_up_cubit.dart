import 'package:bloc/bloc.dart';
import 'package:filmflicks/features/authintication/data/models/request_token_model.dart';
import 'package:filmflicks/features/authintication/data/repository/sign_up_repo_interface.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepoInterface signUpRepoInterface;
  SignUpCubit(this.signUpRepoInterface) : super(SignUpInitial());
  Future signUp() async {
    emit(SignUpCubitLoading());
    var result = await signUpRepoInterface.requestokenMehtod();
    result.fold((failure) {
      emit(SignUpCubitFailure(errMessage: failure.errMessage));
    }, (requestTokenModel) {
      emit(SignUpCubitSuccess(requestTokenModel: requestTokenModel));
    });
  }
}
