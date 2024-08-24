import 'package:filmflicks/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).pop();
      },
      child: Container(
        alignment: AlignmentDirectional.center,
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          color: kSoft,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Icon(
          Icons.arrow_back_ios,
          size: 15,
        ),
      ),
    );
  }
}
