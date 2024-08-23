import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'custom_appBar_widget.dart';

import 'custom_text_field_section.dart';

import 'login_view_body_text_section.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

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
            const CustomAppBarWidget(title: 'Login',),
            const SizedBox(
              height: 40,
            ),
            const LoginViewBodyTextSection(),
            const SizedBox(
              height: 60,
            ),
            const CustomTextFieldSection(),
            const SizedBox(
              height: 60,
            ),
            SizedBox(
              width: width,
              height: hieght * 0.075,
              child: CustomElevatedButton(
                onPressed: () {},
                text: 'Login',
              ),
            )
          ],
        ),
      ),
    );
  }
}
