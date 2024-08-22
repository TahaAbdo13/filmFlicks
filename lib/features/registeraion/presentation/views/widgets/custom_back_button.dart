import 'package:filmflicks/core/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        alignment: AlignmentDirectional.center,
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: kSoft,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Icon(
          Icons.arrow_back_ios,
          size: 22,
        ),
      ),
    );
  }
}
