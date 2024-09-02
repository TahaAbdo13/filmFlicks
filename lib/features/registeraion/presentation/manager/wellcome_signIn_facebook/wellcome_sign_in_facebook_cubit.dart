import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'wellcome_sign_in_facebook_state.dart';

class WellcomeSignInFacebookCubit extends Cubit<WellcomeSignInFacebookState> {
  WellcomeSignInFacebookCubit() : super(WellcomeSignInFacebookInitial());
}
