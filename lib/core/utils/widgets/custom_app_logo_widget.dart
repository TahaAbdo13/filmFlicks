import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppLogoWidget extends StatelessWidget {
  const CustomAppLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/images/appLogo.svg",
      height: 170,
      width: 170,
    );
  }
}