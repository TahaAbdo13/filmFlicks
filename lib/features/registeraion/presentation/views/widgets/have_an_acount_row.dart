import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HaveAnAcountRow extends StatelessWidget {
  const HaveAnAcountRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('I already have an account? ',
            style: Styles.h4.copyWith(color: kGreyColor)),
        Text('Login', style: Styles.h4.copyWith(color: kPrimaryColor))
      ],
    );
  }
}
