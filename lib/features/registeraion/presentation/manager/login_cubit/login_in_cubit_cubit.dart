import 'package:bloc/bloc.dart';
import 'package:filmflicks/features/registeraion/data/repository/log_in_repoImple.dart';

part 'login_in_cubit_state.dart';

class LoginInCubitCubit extends Cubit<LoginInCubitState> {
  final LogInRepoimple logInRepoimple;
  LoginInCubitCubit(this.logInRepoimple) : super(LoginInCubitInitial());
  login(
      {required String email, required String password}) async {
    emit(LogInCubitLoading());
   var result =await logInRepoimple.login(email: email, password: password);
   result.fold((failure) {
      emit(LogInCubitFailure(errMessage: failure.errMessage));
    }, (success) {
      emit(LogInCubitSuccess(successMessage: success.successMessage));
    });
  }
}
