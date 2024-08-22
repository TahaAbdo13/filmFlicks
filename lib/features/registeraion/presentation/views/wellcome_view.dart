import 'package:flutter/material.dart';

import 'widgets/wellcome_view_body.dart';

class WellcomeView extends StatelessWidget {
  const WellcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      body: WellcomeViewBody(),
    );
  }
}
