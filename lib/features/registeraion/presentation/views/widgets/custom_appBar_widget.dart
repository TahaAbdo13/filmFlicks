import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_app_bar_title.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_back_button.dart';
import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget {
  final String title;
  const CustomAppBarWidget({
    super.key, required this.title,
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
         CustomAppBarTitle(title: title)
      ],
    );
  }
}
