import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:filmflicks/core/utils/widgets/custom_app_logo_widget.dart';
import 'package:filmflicks/core/utils/widgets/custom_app_name_widget.dart';
import 'package:flutter/material.dart';

import 'wellcome_screen_logo_section.dart';

class WellcomeViewBody extends StatelessWidget {
  const WellcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 55.0, vertical: 55),
          child: WellcomeScreenLogoSection(),
        ),
      ],
    );
  }
}
