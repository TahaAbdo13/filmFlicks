import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_app_bar_title.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_back_button.dart';
import 'package:flutter/material.dart';

class CustomAppWidget extends StatelessWidget {
  const CustomAppWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        const CustomBackButton(),
        SizedBox(
          width: width * .27,
        ),
        const CustomAppBarTitle(title: "Login")
      ],
    );
  }
}
