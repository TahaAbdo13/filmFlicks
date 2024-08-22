import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar_title.dart';
import 'custom_app_widget.dart';
import 'custom_back_button.dart';

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
          CustomAppWidget()
           
          ],
        ),
      ),
    );
  }
}
