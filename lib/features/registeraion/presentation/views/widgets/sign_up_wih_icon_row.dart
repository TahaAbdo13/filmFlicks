import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_circle_avatar.dart';
import 'package:flutter/material.dart';

class SignUpWihIconRow extends StatelessWidget {
  const SignUpWihIconRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
       CustomCircleAvatar(
        color: kWhiteColor,
        circleImage: 'assets/images/Icon - Google.svg', onTap: () {  },
      ),
       CustomCircleAvatar(
        color: kSoft,
        circleImage: 'assets/images/Icon - Apple.svg', onTap: () {  },
      ),
      CustomCircleAvatar(
        color: Colors.blue.withOpacity(0.6),
        circleImage: 'assets/images/Icon - Facebook.svg', onTap: () {  },
      ),
    ]);
  }
}
