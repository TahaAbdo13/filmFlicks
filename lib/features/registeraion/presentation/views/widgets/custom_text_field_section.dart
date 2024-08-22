import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_text_button.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CustomTextFieldSection extends StatelessWidget {
  const CustomTextFieldSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          children: [
            const CustomTextFormField(
              label: 'Email Address',
            ),
            const SizedBox(
              height: 24,
            ),
            const CustomTextFormField(
              label: 'Password',
            ),
            CustomTextButton(
              onPressed: () {},
              text: 'Forgot Password?',
            )
          ],
        ),
      ],
    );
  }
}
