import 'package:filmflicks/core/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomListViewBuilderItemOnBoarderingScreen extends StatelessWidget {
  final bool isActive;
  const CustomListViewBuilderItemOnBoarderingScreen({
    super.key,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0),
      child: isActive == true
          ? Container(
              height: 8,
              width: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: kPrimaryColor,
              ),
            )
          : Container(
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
