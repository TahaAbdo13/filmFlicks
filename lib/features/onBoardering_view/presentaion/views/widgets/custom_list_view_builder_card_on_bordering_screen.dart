import 'package:filmflicks/features/onBoardering_view/presentaion/views/widgets/custom_list_view_builder_item_on_boardering_screen.dart';
import 'package:flutter/material.dart';

class CustomListViewBuilderCardOnBorderingScreen extends StatelessWidget {
  final PageController pageController;
  final int currentIndex;
  const CustomListViewBuilderCardOnBorderingScreen({
    super.key,
    required this.pageController, required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(0),
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, i) {
          return CustomListViewBuilderItemOnBoarderingScreen(
            isActive: currentIndex == i ? true : false,
          );
        });
  }
}
