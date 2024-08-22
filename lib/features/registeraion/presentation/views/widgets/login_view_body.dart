import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'custom_app_widget.dart';
import 'login_view_body_text_section.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
   
  var hieght = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 14),
        child: Column(
          children: [
            const CustomAppWidget(),
            SizedBox(
              height: hieght * .05,
            ),
           const LoginViewBodyTextSection(),
          ],
        ),
      ),
    );
  }
}
