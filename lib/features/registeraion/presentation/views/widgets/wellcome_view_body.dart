import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WellcomeViewBody extends StatelessWidget {
  const WellcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SvgPicture.asset("assets/images/appLogo.svg",
      )


    ],);
  }
}
