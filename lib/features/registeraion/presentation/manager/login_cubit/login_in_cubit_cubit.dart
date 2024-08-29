import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_in_cubit_state.dart';

class LoginInCubitCubit extends Cubit<LoginInCubitState> {
  LoginInCubitCubit() : super(LoginInCubitInitial());
}
