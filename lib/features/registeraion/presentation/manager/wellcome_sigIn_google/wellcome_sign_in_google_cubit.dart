import 'package:bloc/bloc.dart';


part 'wellcome_sign_in_google_state.dart';

class WellcomeSignInGoogleCubit extends Cubit<WellcomeSignInGoogleState> {
  WellcomeSignInGoogleCubit() : super(WellcomeSignInGoogleInitial());
  
}
