import 'package:filmflicks/core/utils/constants.dart';
import 'package:flutter/material.dart';

import 'custom_back_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              CustomBackButton()
            ],
          )
        ],
      ),
    );
  }
}
