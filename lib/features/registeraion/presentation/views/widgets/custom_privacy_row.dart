import 'package:filmflicks/core/utils/styles.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_check_box.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class CustomPrivacyRow extends StatelessWidget {
  final void Function(bool?) onChanged;
  final bool isActive;
  const CustomPrivacyRow({
    super.key,
    required this.onChanged, required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          onChanged: onChanged, isActive: isActive,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  "I agree to the ",
                  style: Styles.h5,
                ),
                CustomTextButton(
                  onPressed: () {},
                  text: 'Terms and Services',
                ),
              ],
            ),
            Row(
              children: [
                const Text(
                  "and ",
                  style: Styles.h5,
                ),
                CustomTextButton(onPressed: () {}, text: "Privacy and services")
              ],
            ),
          ],
        ),
      ],
    );
  }
}
