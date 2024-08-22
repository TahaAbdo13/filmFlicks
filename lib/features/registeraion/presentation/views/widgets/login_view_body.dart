import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar_title.dart';
import 'custom_back_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              const CustomBackButton(),
              SizedBox(
                width: width * .35,
              ),
             const CustomAppBarTitle( title: "Login")
            ],
          )
        ],
      ),
    );
  }
}
