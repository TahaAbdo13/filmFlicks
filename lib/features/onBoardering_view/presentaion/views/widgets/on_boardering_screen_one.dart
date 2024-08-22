import 'package:filmflicks/features/onBoardering_view/presentaion/views/widgets/custom_card_on_bordering_screen.dart';
import 'package:flutter/material.dart';

class OnBoarderingScreenOne extends StatelessWidget {
  final String next;
  final int currentIndex;
  final String title;

  final PageController pageController;
  const OnBoarderingScreenOne({
    super.key,
    required this.pageController,
    required this.next,
    required this.currentIndex,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    var hieght = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          height: hieght,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Image.png"),
                  fit: BoxFit.fill)),
        ),
        Positioned(
            left: 30,
            right: 30,
            bottom: 24,
            child: CustomCardOnBorderingScreen(
              pageController: pageController,
              next: next,
              currentIndex: currentIndex,
              title: title,
            ))
      ],
    );
  }
}
