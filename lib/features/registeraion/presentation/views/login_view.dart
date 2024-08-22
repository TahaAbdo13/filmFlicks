import 'package:filmflicks/core/utils/constants.dart';
import 'package:flutter/material.dart';

import 'widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      backgroundColor: kCardColor,
      body: LoginViewBody(),
    ));
  }
}
