import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_appBar_widget.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CustomAppBarWidget(title: 'Sugn Up',),],
    );
  }
}
