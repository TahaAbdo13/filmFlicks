import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_app_bar_title.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_back_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBarWidget extends StatelessWidget {
  final String title;
  const CustomAppBarWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        CustomBackButton(
          iconData: Icons.arrow_back_ios,
          onTap: () {
            GoRouter.of(context).pop();
          },
          size: 20,
          color: kWhiteColor,
        ),
        SizedBox(
          width: width * .27,
        ),
        CustomAppBarTitle(title: title)
      ],
    );
  }
}
