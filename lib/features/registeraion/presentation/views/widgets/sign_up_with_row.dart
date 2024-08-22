import 'package:filmflicks/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SignUpWithRow extends StatelessWidget {
  const SignUpWithRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(child: Divider()),
        Expanded(
            child: Text(
          "  Or Sign up with",
          style: Styles.h5.copyWith(fontWeight: FontWeight.w500),
        )),
        const Expanded(child: Divider()),
      ],
    );
  }
}
