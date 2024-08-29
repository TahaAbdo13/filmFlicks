import 'package:filmflicks/core/utils/app_router.dart';
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
                listener: (context, state) {},
                builder: (context, state) {
                  return CustomElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          context.read<VerifiengCubitCubit>().verifiengEmail(emailAddress: emailAdress.text);
                        }
                      },
                      text: "Next");
                },
              ))
        ],
      ),
    );
  }
}
