import 'package:filmflicks/core/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatelessWidget {
  final void Function(bool?) onChanged;
  const CustomCheckBox({
    super.key,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: kPrimaryColor,
      checkColor: kWhiteColor,
      value: false,
      onChanged: onChanged,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    );
  }
}
