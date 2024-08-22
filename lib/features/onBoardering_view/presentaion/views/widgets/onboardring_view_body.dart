import 'package:filmflicks/features/onBoardering_view/presentaion/views/widgets/on_boardering_screen_view_two.dart';
import 'package:flutter/material.dart';

import 'on_boardering_screen_one.dart';

class OnboardringViewBody extends StatefulWidget {
  const OnboardringViewBody({super.key});

  @override
  State<OnboardringViewBody> createState() => _OnboardringViewBodyState();
}

class _OnboardringViewBodyState extends State<OnboardringViewBody> {
  final PageController pageController = PageController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      onPageChanged: (value) {
        setState(() {
          currentIndex = value;
        });
      },
      children: [
        OnBoarderingScreenOne(
          pageController: pageController,
          next: "assets/images/Next.svg",
          currentIndex: currentIndex,
          title: "Lorem ipsum dolor sit amet consecteur esplicit",
        ),
        OnBoarderingScreenTow(
          image: "assets/images/Image2.png",
          pageController: pageController,
          next: "assets/images/Next2.svg",
          currentIndex: currentIndex,
          title: 'Offers ad-free viewing of high quality',
        ),
        OnBoarderingScreenTow(
          image: "assets/images/Image3.png",
          pageController: pageController,
          next: "assets/images/Next3.svg",
          currentIndex: currentIndex,
          title: 'Our service brings together your favorite series',
        )
      ],
    );
  }
}
