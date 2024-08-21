import 'package:filmflicks/features/onBoardering_view/presentaion/views/widgets/custom_list_view_builder_item_on_boardering_screen.dart';
import 'package:flutter/material.dart';

class CustomListViewBuilderCardOnBorderingScreen extends StatelessWidget {
  const CustomListViewBuilderCardOnBorderingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(0),
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, i) {
          return const CustomListViewBuilderItemOnBoarderingScreen();
        });
  }
}
