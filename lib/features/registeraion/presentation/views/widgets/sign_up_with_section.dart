import 'package:filmflicks/features/registeraion/presentation/views/widgets/sign_up_wih_icon_row.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/sign_up_with_row.dart';
import 'package:flutter/material.dart';

class SignUpWithSection extends StatelessWidget {
  const SignUpWithSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SignUpWithRow(),
        SizedBox(
      height: 40,
    ),
    SignUpWihIconRow()
      ],
    );
  }
}
