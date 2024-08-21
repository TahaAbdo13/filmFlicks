import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/core/utils/styles.dart';

import 'package:flutter/material.dart';

import 'custom_card_row_on_boardering_screen.dart';

class CustomCardOnBorderingScreen extends StatelessWidget {
  const CustomCardOnBorderingScreen({
    super.key,
    required this.hieght,
  });

  final double hieght;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 57,
      bottom: 24,
      child: SizedBox(
        height: hieght * .40,
        child: AspectRatio(
          aspectRatio: 1 / 1,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: kSoft,
            ),
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                children: [
                  const Text(
                    "Lorem ipsum dolor sit amet consecteur esplicit",
                    style: Styles.h3,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Semper in cursus magna et eu varius nunc adipiscing. Elementum justo, laoreet id sem semper parturient.",
                    style: Styles.h5.copyWith(
                        color: kGreyColor, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    maxLines: 4,
                  ),
               const   SizedBox(
                    height: 20,
                  ),
                 const  CustomCardRowOnBoarderingScreen(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
