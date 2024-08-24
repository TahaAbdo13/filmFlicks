import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_appBar_widget.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/view_body_text_section.dart';
import 'package:flutter/material.dart';

import 'very_fing_otp_section.dart';

class VerifyingViewBody extends StatelessWidget {
  const VerifyingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24),
      child: Column(
        children: [
          const CustomAppBarWidget(title: ""),
          const SizedBox(
            height: 40,
          ),
          const ViewBodyTextSection(
              title1: "Verifying your account",
              title2: "We have just sent you 4 digit code via your",
              style1: Styles.h2,
              style2: Styles.h5),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "email ",
                style: Styles.h5,
              ),
              Text(
                "tahaabdo212@gmail.com",
                style: Styles.h5
                    .copyWith(color: kWhiteColor, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          const VeryFingOtpSection(),
        ],
      ),
    );
  }
}
