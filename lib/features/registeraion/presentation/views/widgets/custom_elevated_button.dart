import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final bool? isLoading;
  final void Function() onPressed;
  final String text;
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.text,  this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(backgroundColor: kPrimaryColor),
      child:isLoading??false?const CircularProgressIndicator(): Text(
        text,
        style: Styles.h4.copyWith(color: Colors.white),
      ),
    );
  }
}
