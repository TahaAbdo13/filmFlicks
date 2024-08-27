import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
 final String? Function(String?)? validator;
  final TextEditingController textEditingController;
  final String label;
  const CustomTextFormField({
    super.key,
    required this.label, required this.textEditingController, this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator:validator ,
      controller: textEditingController,
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
