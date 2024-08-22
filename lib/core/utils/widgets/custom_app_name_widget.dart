import 'package:filmflicks/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomAppNameWidget extends StatelessWidget {
  const CustomAppNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "FILM FLICKS",
      style: Styles.h1,
    );
  }
}


