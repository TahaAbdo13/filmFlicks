import 'package:filmflicks/features/onBoardering_view/presentaion/views/widgets/custom_list_view_builder_card_on_bordering_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCardRowOnBoarderingScreen extends StatelessWidget {
    final int currentIndex;
  final PageController pageController;
  final String next;
  const CustomCardRowOnBoarderingScreen({
    super.key,
    required this.pageController, required this.next, required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
           Expanded(
            child: SizedBox(
              height: 7,
              child: CustomListViewBuilderCardOnBorderingScreen(pageController:pageController, currentIndex: currentIndex ,),
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              pageController.nextPage(
                  duration: const Duration(seconds: 1), curve: Curves.bounceIn);
            },
            child: SvgPicture.asset(
              next,
              width: 70,
              height: 70,
            ),
          )
        ],
      ),
    );
  }
}
