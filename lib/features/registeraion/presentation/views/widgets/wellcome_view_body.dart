import 'package:filmflicks/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'elvated_button_and_row_section.dart';
import 'wellcome_screen_logo_section.dart';

class WellcomeViewBody extends StatelessWidget {
  const WellcomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 55.0,
          ),
          child: WellcomeScreenLogoSection(),
        ),
        SizedBox(
          height: 64,
        ),
        ElvatedButtonAndRowSection(),
        SizedBox(
          height: 32,
        ),
        SignUpWithRow()
      ],
    );
  }
}

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
