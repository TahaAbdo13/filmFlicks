import 'package:filmflicks/core/utils/app_router.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_appBar_widget.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_elevated_button.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_text_form_field.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/view_body_text_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResetPasswordViewBody extends StatefulWidget {
  const ResetPasswordViewBody({super.key});

  @override
  State<ResetPasswordViewBody> createState() => _ResetPasswordViewBodyState();
}

class _ResetPasswordViewBodyState extends State<ResetPasswordViewBody> {
  TextEditingController emailAdress = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var hieght = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 24),
      child: Column(
        children: [
          CustomAppBarWidget(title: ""),
          SizedBox(
            height: 40,
          ),
          ViewBodyTextSection(
              title1: "Reset Password",
              title2: "Recover your account password",
              style1: Styles.h1,
              style2: Styles.h5),
          SizedBox(
            height: 48,
          ),
          CustomTextFormField(
            label: "Email Address",
            textEditingController: emailAdress,
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
              width: width,
              height: hieght * 0.075,
              child: CustomElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).push(AppRouter.kVerifyingView);
                  },
                  text: "Next"))
        ],
      ),
    );
  }
}
