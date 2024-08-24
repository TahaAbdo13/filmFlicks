import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/core/utils/styles.dart';

import 'package:flutter/material.dart';

import 'custom_card_row_on_boardering_screen.dart';

class CustomCardOnBorderingScreen extends StatelessWidget {
  final bool isLastPage;
  final String title;
  final int currentIndex;
  final String next;
  final PageController pageController;
  const CustomCardOnBorderingScreen({
    super.key,
    required this.pageController,
    required this.next,
    required this.currentIndex,
    required this.title, required this.isLastPage,
  });

  @override
  Widget build(BuildContext context) {
    var hieght = MediaQuery.of(context).size.height;
    return SizedBox(
      height: hieght * .40,
      child: AspectRatio(
        aspectRatio: 1 / 1,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: kCardColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              children: [
                Text(
                  title,
                  style: Styles.h4,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 14,
                ),
                Text(
                  "Semper in cursus magna et eu varius nunc adipiscing. Elementum justo, laoreet id sem semper parturient.",
                  style: Styles.h5
                      .copyWith(color: kGreyColor, fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  maxLines: 4,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomCardRowOnBoarderingScreen(
                  isLastPage: isLastPage,
                  pageController: pageController,
                  next: next,
                  currentIndex: currentIndex,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
