import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:filmflicks/core/models/user_model.dart';
import 'package:filmflicks/features/registeraion/data/repository/sign_up_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'sign_in_cubit_state.dart';

class SignInCubitCubit extends Cubit<SignInCubitState> {
  final SignUpRepo signUpRepo;
  SignInCubitCubit(this.signUpRepo) : super(SignInCubitInitial());

  singUp(
      {required UserModel userModel,
      required FirebaseAuth firebaseAuth,
      required FirebaseFirestore firebaseFirestore}) async {
    emit(SignInCubitLoading());
    var result = await signUpRepo.signUp(
        userModel: userModel,
        firebaseAuthe: firebaseAuth,
        firebaseFirestore: firebaseFirestore);
    result.fold((failure) {
      emit(SignInCubitFailure(errMessage: failure.errMessage));
    }, (success) {
      emit(SignInCubitSuccess(successMessage: success.successMessage));
    });
  }
}
