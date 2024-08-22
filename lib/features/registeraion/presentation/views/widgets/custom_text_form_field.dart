import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  const CustomTextFormField({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Styles.h6,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: Styles.h6.copyWith(color: kWhiteGrey),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: const BorderSide(color: kPrimaryColor),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: const BorderSide(
              color: kSoft,
            )),
      ),
    );
  }
}
