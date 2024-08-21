import 'package:filmflicks/core/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomListViewBuilderItemOnBoarderingScreen extends StatelessWidget {
  const CustomListViewBuilderItemOnBoarderingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0),
      child: Container(
        height: 7,
        width: 7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
