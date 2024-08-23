import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_appBar_widget.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24),
      child: Column(
        children: [
          const CustomAppBarWidget(
            title: 'Sugn Up',
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            "Let’s get started",
            style: Styles.h2.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "The latest movies and series are here",
            style: Styles.h6.copyWith(color: kWhiteGrey),
          )
        ],
      ),
    );
  }
}
