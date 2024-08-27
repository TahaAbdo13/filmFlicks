 import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:flutter/material.dart';

void showSnackBarMethod(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(
        snackBarAnimationStyle: AnimationStyle(curve: Curves.easeInOutCubic),
        SnackBar(
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
          content: Text(
            text,
            style: Styles.h5.copyWith(color: Colors.white),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: kPrimaryColor,
        ));
  }