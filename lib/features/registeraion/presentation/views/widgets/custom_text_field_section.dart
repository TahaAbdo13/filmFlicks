import 'package:filmflicks/core/utils/app_router.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_text_button.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomTextFieldSection extends StatefulWidget {
  const CustomTextFieldSection({
    super.key,
  });

  @override
  State<CustomTextFieldSection> createState() => _CustomTextFieldSectionState();
}

class _CustomTextFieldSectionState extends State<CustomTextFieldSection> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  TextEditingController emailAdress = TextEditingController();

  TextEditingController passWord = TextEditingController();
  @override
  void dispose() {
    emailAdress.dispose();
    passWord.dispose();
  
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomTextFormField(
          label: 'Email Address',
          textEditingController: emailAdress,
        ),
        const SizedBox(
          height: 24,
        ),
        CustomTextFormField(
          label: 'Password',
          textEditingController: passWord,
        ),
        CustomTextButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kVerifyingView);
          },
          text: 'Forgot Password?',
        ),
      ],
    );
  }
}
