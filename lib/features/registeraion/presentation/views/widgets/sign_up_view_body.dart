import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:filmflicks/core/models/user_model.dart';
import 'package:filmflicks/core/utils/app_router.dart';
import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/core/utils/functions/show_snack_bar.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:filmflicks/features/registeraion/presentation/manager/sign_in_cubit/sign_in_cubit_cubit.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_appBar_widget.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_elevated_button.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_text_form_field.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/sign_up_form_section.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/view_body_text_section.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'custom_privacy_row.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  TextEditingController emailAdress = TextEditingController();
  TextEditingController fullName = TextEditingController();
  TextEditingController passWord = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var hieght = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24),
      child: Column(
        children: [
          const CustomAppBarWidget(
            title: 'Sign Up',
          ),
          const SizedBox(
            height: 40,
          ),
          ViewBodyTextSection(
            title1: "Let’s get started",
            title2: "The latest movies and series are here",
            style1: Styles.h2,
            style2: Styles.h6.copyWith(color: kWhiteGrey),
          ),
          const SizedBox(
            height: 64,
          ),
          SignUpFormSection(
            formkey: formkey,
            autovalidateMode: autovalidateMode,
            emailAdress: emailAdress,
            fullName: fullName,
            passWord: passWord,
          ),
          const SizedBox(height: 16),
          const CustomPrivacyRow(),
          const SizedBox(height: 40),
          SizedBox(
              width: width,
              height: hieght * 0.075,
              child: BlocConsumer<SignInCubitCubit, SignInCubitState>(
                listener: (BuildContext context, SignInCubitState state) {
                  if (state is SignInCubitFailure) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(state.errMessage),
                          );
                        });
                  } else if (state is SignInCubitSuccess) {
                    showSnackBarMethod(context, state.successMessage);
                    GoRouter.of(context).push(AppRouter.kLoginView);
                  }
                },
                builder: (context, state) {
                  return CustomElevatedButton(
                      isLoading: state is SignInCubitLoading ? true : false,
                      onPressed: () async {
                        if (formkey.currentState!.validate()) {
                          formkey.currentState!.save();
                          autovalidateMode = AutovalidateMode.always;
                          UserModel userModel = UserModel(
                            emailAddress: emailAdress.text,
                            name: fullName.text,
                            password: passWord.text,
                          );
                          await BlocProvider.of<SignInCubitCubit>(context)
                              .singUp(
                                  userModel: userModel,
                                  firebaseAuth: FirebaseAuth.instance,
                                  firebaseFirestore:
                                      FirebaseFirestore.instance);
                        }
                      },
                      text: "Sign Up");
                },
              ))
        ],
      ),
    );
  }
}
