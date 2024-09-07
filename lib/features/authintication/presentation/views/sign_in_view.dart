import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/features/authintication/presentation/views/widgets/sign_in_view_body.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(backgroundColor: kCardColor, body: SignInViewBody()));
  }
}
