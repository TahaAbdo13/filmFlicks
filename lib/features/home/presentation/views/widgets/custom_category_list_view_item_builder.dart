import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomCategoryListViewItemBuilder extends StatelessWidget {
  final bool isActive;
  const CustomCategoryListViewItemBuilder({
    super.key,
   
     required this.isActive, required this.categoryTitle,
  });

  final String categoryTitle;
 

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: AlignmentDirectional.center,
        padding: const EdgeInsets.all(4),
        width: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isActive  ? kSoft : kCardColor,
        ),
        child: Text(
          categoryTitle,
          style: Styles.h6.copyWith(
              fontWeight: FontWeight.bold,
              color: isActive ? kPrimaryColor : kWhiteColor),
        ));
  }
}
