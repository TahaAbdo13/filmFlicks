import 'package:filmflicks/features/authintication/presentation/views/widgets/sign_in_view_body.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:SignInViewBody(),
    );
  }
}
