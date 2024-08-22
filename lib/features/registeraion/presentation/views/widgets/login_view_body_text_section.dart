import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:flutter/material.dart';

class LoginViewBodyTextSection extends StatelessWidget {
  const LoginViewBodyTextSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
   
    return Column(
      children: [
        Text(
          "Hi,Tiffany",
          style: Styles.h2.copyWith(color: Colors.white),
        ),
     const   SizedBox(
          height: 8,
        ),
        Text(
          "Welcome back! Please enter your details.",
          style: Styles.h6.copyWith(color: kWhiteGrey),
        )
      ],
    );
  }
}
