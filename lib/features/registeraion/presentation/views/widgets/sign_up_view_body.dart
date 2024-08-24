import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_appBar_widget.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_text_form_field.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/view_body_text_section.dart';
import 'package:flutter/material.dart';
import 'custom_privacy_row.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24),
      child: Column(
        children: [
          const CustomAppBarWidget(
            title: 'Sugn Up',
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
          const CustomTextFormField(label: "Full Name"),
          const SizedBox(
            height: 24,
          ),
          const CustomTextFormField(label: "Email Address"),
          const SizedBox(
            height: 24,
          ),
          const CustomTextFormField(label: "Password"),
          const SizedBox(height: 16),
          const CustomPrivacyRow(),
        ],
      ),
    );
  }
}
