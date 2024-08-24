import 'package:filmflicks/core/utils/app_router.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_appBar_widget.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_elevated_button.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_text_form_field.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/view_body_text_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreateNewPasswordBody extends StatelessWidget {
  const CreateNewPasswordBody({super.key});
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
              title1: "Create new password",
              title2: "Enter Your New Password",
              style1: Styles.h2,
              style2: Styles.h5),
          const SizedBox(
            height: 48,
          ),
          const CustomTextFormField(label: "New Password"),
          const SizedBox(
            height: 24,
          ),
          const CustomTextFormField(label: "Confirm Password"),
          const SizedBox(
            height: 48,
          ),
          SizedBox(
            width: width,
            height: hieght * 0.075,
            child: CustomElevatedButton(
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kLoginView);
                },
                text: "Reset"),
          )
        ],
      ),
    );
  }
}
