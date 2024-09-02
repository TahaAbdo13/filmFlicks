import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCircleAvatar extends StatelessWidget {
  final bool isLoading;
  final void Function() onTap;
  final Color color;
  final String circleImage;
  const CustomCircleAvatar({
    super.key,
    required this.color,
    required this.circleImage,
    required this.onTap, required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
          backgroundColor: color,
          radius: 35,
          child:isLoading?const CircularProgressIndicator(): SvgPicture.asset(circleImage)),
    );
  }
}
