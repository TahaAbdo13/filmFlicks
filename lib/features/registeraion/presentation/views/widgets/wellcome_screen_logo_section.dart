import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:filmflicks/core/utils/widgets/custom_app_logo_widget.dart';
import 'package:filmflicks/core/utils/widgets/custom_app_name_widget.dart';
import 'package:flutter/material.dart';

class WellcomeScreenLogoSection extends StatelessWidget {
  const WellcomeScreenLogoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppLogoWidget(),
        const CustomAppNameWidget(),
        Text(
          "Enter your registered Phone Number to Sign Up",
          style: Styles.h5.copyWith(color: kGreyColor),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
