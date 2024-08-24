import 'package:filmflicks/core/utils/app_router.dart';
import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
        CustomTextButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kLoginView);
            },
            text: "Login")
      ],
    );
  }
}
