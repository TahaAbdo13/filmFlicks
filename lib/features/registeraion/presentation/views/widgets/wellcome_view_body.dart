import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'custom_circle_avatar.dart';
import 'elvated_button_and_row_section.dart';
import 'sign_up_with_row.dart';
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
        SignUpWithRow(),
        SizedBox(
          height: 40,
        ),
        SignUpWihIconRow()
      ],
    );
  }
}

class SignUpWihIconRow extends StatelessWidget {
  const SignUpWihIconRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      const CustomCircleAvatar(
        color: kWhiteColor,
        circleImage: 'assets/images/Icon - Google.svg',
      ),
      const CustomCircleAvatar(
        color: kSoft,
        circleImage: 'assets/images/Icon - Apple.svg',
      ),
      CustomCircleAvatar(
        color: Colors.blue.withOpacity(0.6),
        circleImage: 'assets/images/Icon - Facebook.svg',
      ),
    ]);
  }
}
