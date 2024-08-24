import 'package:filmflicks/features/onBoardering_view/presentaion/views/widgets/custom_card_on_bordering_screen.dart';
import 'package:flutter/material.dart';

class OnBoarderingScreenTow extends StatelessWidget {
  final bool isLastPage;
    final int currentIndex;
      final String title;
  final String image;
  final String next;

    final PageController pageController;
  const OnBoarderingScreenTow({super.key, required this.image, required this.pageController, required this.next, required this.currentIndex, required this.title, required this.isLastPage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 30),
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration:  BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.fitWidth)),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
           CustomCardOnBorderingScreen(pageController: pageController, next: next, currentIndex: currentIndex, title: title, isLastPage: isLastPage,),
        ],
      ),
    );
  }
}
