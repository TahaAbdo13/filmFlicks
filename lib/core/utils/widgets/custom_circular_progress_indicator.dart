import 'package:filmflicks/core/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      color: kGreyColor,
      strokeWidth: 3,
      semanticsValue: "Loading",
    );
  }
}
