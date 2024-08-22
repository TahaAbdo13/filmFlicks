
import 'package:flutter/material.dart';

import 'elvated_button_and_row_section.dart';

import 'sign_up_with_section.dart';
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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 60.0),
          child: SignUpWithSection(),
        ),
      ],
    );
  }
}
