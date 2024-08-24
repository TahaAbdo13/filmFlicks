import 'package:flutter/material.dart';

import 'widgets/create_new_password_body.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Scaffold(body:  CreateNewPasswordBody()));
  }
}
