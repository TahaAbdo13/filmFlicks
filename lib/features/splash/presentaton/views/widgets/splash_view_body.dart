import 'package:filmflicks/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: SvgPicture.asset(
            "assets/images/appLogo.svg",
            height: 170,
            width: 170,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Text(
          "FILM FLICKS",
          style: Styles.h1,
        )
      ],
    );
  }
}
