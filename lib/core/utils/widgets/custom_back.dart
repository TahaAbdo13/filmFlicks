import 'package:filmflicks/core/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  final IconData iconData;
  final double size;
  final Color color;
  final void Function() onTap;
  const CustomBackButton({
    super.key,
    required this.iconData,
    required this.onTap, required this.size, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: AlignmentDirectional.center,
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: kSoft,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(
          color: color,
          iconData,
          size: size,
        ),
      ),
    );
  }
}

