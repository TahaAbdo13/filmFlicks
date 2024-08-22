import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCircleAvatar extends StatelessWidget {
  final Color color;
  final String circleImage;
  const CustomCircleAvatar({
    super.key,
    required this.color,
    required this.circleImage,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        backgroundColor: color,
        radius: 40,
        child: SvgPicture.asset(circleImage));
  }
}
