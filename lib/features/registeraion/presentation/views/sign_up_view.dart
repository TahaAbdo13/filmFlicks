import 'package:filmflicks/core/utils/constants.dart';
import 'package:flutter/material.dart';

import 'widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      backgroundColor: kCardColor,
      body: SignUpViewBody(),
    ));
  }
}
