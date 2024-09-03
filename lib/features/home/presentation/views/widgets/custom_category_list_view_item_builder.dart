import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomCategoryListViewItemBuilder extends StatelessWidget {
  const CustomCategoryListViewItemBuilder({
    super.key,
    required this.category, required this.i,
  });

  final List category;
  final int i;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          alignment: AlignmentDirectional.center,
          padding: const EdgeInsets.all(4),
          width: 110,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: i == 0 ? kSoft : kCardColor,
          ),
          child: Text(
            category[i],
            style: Styles.h6.copyWith(
                fontWeight: FontWeight.bold,
                color: i == 0 ? kPrimaryColor : kWhiteColor),
          )),
    );
  }
}
