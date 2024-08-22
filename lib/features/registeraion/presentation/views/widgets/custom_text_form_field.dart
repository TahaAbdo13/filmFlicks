import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: "taha@gmail.com",
        hintStyle: Styles.h6.copyWith(color: kWhiteGrey),
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
