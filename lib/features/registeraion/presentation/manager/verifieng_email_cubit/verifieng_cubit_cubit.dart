import 'package:bloc/bloc.dart';
import 'package:filmflicks/features/registeraion/data/repository/verifieng_email_repoImplementaion.dart';

part 'verifieng_cubit_state.dart';

class VerifiengCubitCubit extends Cubit<VerifiengCubitState> {
  final VerifiengEmailRepoimplementaion verifiengEmailRepoimplementaion;
  VerifiengCubitCubit(this.verifiengEmailRepoimplementaion)
      : super(VerifiengCubitInitial());

  Future verifiengEmail({required String emailAddress}) async {
    emit(VerifiengCubitLoading());
    var result = await verifiengEmailRepoimplementaion.veriFiengEmail(
        emailAddress: emailAddress);

    result.fold((failure) {
      emit(VerifiengCubitFailure(errMessage: failure.errMessage));
    }, (success) {
      emit(VerifiengCubitSuccess(successMessage: success.successMessage));
    });
  }
}
