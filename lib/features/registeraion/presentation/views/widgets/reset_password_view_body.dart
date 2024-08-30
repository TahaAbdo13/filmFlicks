import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:filmflicks/core/utils/app_router.dart';
import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/core/utils/functions/show_snack_bar.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:filmflicks/features/registeraion/presentation/manager/verifieng_email_cubit/verifieng_cubit_cubit.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_appBar_widget.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_elevated_button.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_text_form_field.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/view_body_text_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ResetPasswordViewBody extends StatefulWidget {
  const ResetPasswordViewBody({super.key});

  @override
  State<ResetPasswordViewBody> createState() => _ResetPasswordViewBodyState();
}

class _ResetPasswordViewBodyState extends State<ResetPasswordViewBody> {
  TextEditingController emailAdress = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    var hieght = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24),
      child: Column(
        children: [
          const CustomAppBarWidget(title: ""),
          const SizedBox(
            height: 40,
          ),
          const ViewBodyTextSection(
              title1: "Reset Password",
              title2: "Recover your account password",
              style1: Styles.h1,
              style2: Styles.h5),
          const SizedBox(
            height: 48,
          ),
          Form(
            key: formKey,
            child: CustomTextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter email Address";
                } else {
                  return null;
                }
              },
              label: "Email Address",
              textEditingController: emailAdress,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
              width: width,
              height: hieght * 0.075,
              child: BlocConsumer<VerifiengCubitCubit, VerifiengCubitState>(
                listener: (context, state) {
                  if (state is VerifiengCubitFailure) {
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
                  } else if (state is VerifiengCubitSuccess) {
                    showSnackBarMethod(context, state.successMessage);
                    GoRouter.of(context).pop();
                  }
                },
                builder: (context, state) {
                  return CustomElevatedButton(
                      isLoading: state is VerifiengCubitLoading ? true : false,
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          context
                              .read<VerifiengCubitCubit>()
                              .verifiengEmail(emailAddress: emailAdress.text);
                        }
                      },
                      text: "Send");
                },
              ))
        ],
      ),
    );
  }
}
