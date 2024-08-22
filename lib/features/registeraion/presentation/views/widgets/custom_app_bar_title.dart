import 'package:filmflicks/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomAppBarTitle extends StatelessWidget {
  final String title;

  const CustomAppBarTitle({
    super.key,
   
    required this.title,
  });



  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Styles.h4,
    );
  }
}
