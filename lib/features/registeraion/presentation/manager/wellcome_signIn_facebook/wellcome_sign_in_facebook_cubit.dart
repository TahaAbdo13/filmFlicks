import 'package:bloc/bloc.dart';
import 'package:filmflicks/features/registeraion/data/repository/wellcome_repoImple.dart';
part 'wellcome_sign_in_facebook_state.dart';
class WellcomeSignInFacebookCubit extends Cubit<WellcomeSignInFacebookState> {
  final WellcomeRepoimple wellcomeRepoimple;
  WellcomeSignInFacebookCubit(this.wellcomeRepoimple) : super(WellcomeSignInFacebookInitial());
  
}
