import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final void Function() onPressed;
  const CustomElevatedButton({
    super.key, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(backgroundColor: kPrimaryColor),
      child: Text(
        "Sign Up",
        style: Styles.h4.copyWith(color: Colors.white),
      ),
    );
  }
}
