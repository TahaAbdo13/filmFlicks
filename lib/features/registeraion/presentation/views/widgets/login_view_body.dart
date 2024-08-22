
import 'package:flutter/material.dart';
import 'custom_app_widget.dart';
import 'custom_text_form_field.dart';
import 'login_view_body_text_section.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 14),
        child: Column(
          children: [
            CustomAppWidget(),
            SizedBox(
              height: 40,
            ),
            LoginViewBodyTextSection(),
            SizedBox(
              height: 60,
            ),
            CustomTextFormField(
              label: 'Email Address',
            ),
            SizedBox(
              height: 24,
            ),
            CustomTextFormField(
              label: 'Password',
            ),
          ],
        ),
      ),
    );
  }
}
