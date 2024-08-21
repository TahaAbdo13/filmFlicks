import 'package:flutter/material.dart';

import 'widgets/onboardring_view_body.dart';

class OnboardringView extends StatelessWidget {
  const OnboardringView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnboardringViewBody(),
    );
  }
}
