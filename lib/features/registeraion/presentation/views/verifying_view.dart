import 'package:filmflicks/core/utils/constants.dart';
import 'package:flutter/material.dart';

import 'widgets/verifying_view_body.dart';

class VerifyingView extends StatelessWidget {
  const VerifyingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      backgroundColor: kCardColor,
      body: VerifyingViewBody(),
    ));
  }
}
