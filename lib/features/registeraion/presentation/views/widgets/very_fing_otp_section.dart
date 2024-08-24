import 'package:filmflicks/core/utils/app_router.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_elevated_button.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_text_button.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/otp_code.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VeryFingOtpSection extends StatelessWidget {
  const VeryFingOtpSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var hieght = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const OtpCode(),
        const SizedBox(
          height: 64,
        ),
        SizedBox(
            width: width,
            height: hieght * 0.075,
            child: CustomElevatedButton(onPressed: () {}, text: "Continue")),
        const SizedBox(
          height: 24,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Didn’t receive code? ",
              style: Styles.h5,
            ),
            CustomTextButton(
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kResetPasswordView);
                },
                text: "Resend")
          ],
        )
      ],
    );
  }
}
