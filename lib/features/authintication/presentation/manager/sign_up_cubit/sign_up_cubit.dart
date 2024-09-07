import 'package:bloc/bloc.dart';
import 'package:filmflicks/features/authintication/data/models/request_token_model.dart';


part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());
}
