import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/core/utils/functions/show_snack_bar.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:filmflicks/features/registeraion/presentation/manager/cubit/login_in_cubit_cubit.dart';


import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_appBar_widget.dart';

import 'custom_text_field_section.dart';

import 'view_body_text_section.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  TextEditingController emailAdress = TextEditingController();

  TextEditingController passWord = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var hieght = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 14),
        child: Column(
          children: [
            const CustomAppBarWidget(
              title: 'Login',
            ),
            const SizedBox(
              height: 40,
            ),
            ViewBodyTextSection(
              title1: 'Hi, Tiffany',
              style1: Styles.h2,
              title2: '"Welcome back! Please enter your details."',
              style2: Styles.h6.copyWith(color: kWhiteGrey),
            ),
            const SizedBox(
              height: 60,
            ),
            CustomTextFieldSection(
              emailAdress: emailAdress,
              passWord: passWord,
            ),
            const SizedBox(
              height: 60,
            ),
            SizedBox(
              width: width,
              height: hieght * 0.075,
              child: BlocConsumer<LoginInCubitCubit, LoginInCubitState>(
                listener: (context, state) {
                  if (state is LogInCubitFailure) {
                    AwesomeDialog(
                            context: context,
                            customHeader: const Icon(
                              Icons.error,
                              size: 50,
                              color: Colors.red,
                            ),
                            title: "Error",
                            titleTextStyle:
                                Styles.h2.copyWith(color: kPrimaryColor),
                            descTextStyle:
                                Styles.h5.copyWith(color: kWhiteColor),
                            desc: state.errMessage)
                        .show();
                  } else if (state is LogInCubitSuccess) {
                    showSnackBarMethod(context, state.successMessage);
                  }
                },
                builder: (context, state) {
                  return CustomElevatedButton(
                    isLoading: state is LogInCubitLoading ? true : false,
                    onPressed: () {
                      BlocProvider.of<LoginInCubitCubit>(context).login(
                          email: emailAdress.text, password: passWord.text);
                    },
                    text: 'Login',
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
