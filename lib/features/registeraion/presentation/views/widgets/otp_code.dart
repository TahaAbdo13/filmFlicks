import 'package:filmflicks/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpCode extends StatelessWidget {
  const OtpCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      length: 4,
      obscureText: true,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(12),
          fieldHeight: 64,
          fieldWidth: 64,
          activeFillColor: Colors.white,
          selectedColor: kPrimaryColor,
          inactiveColor: kSoft),
      appContext: context,
    );
  }
}
