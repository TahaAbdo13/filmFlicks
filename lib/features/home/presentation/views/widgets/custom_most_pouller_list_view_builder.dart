import 'package:filmflicks/features/home/presentation/views/widgets/custom_most_pouler_item_builder.dart';
import 'package:flutter/material.dart';

class CustomMostPoullerListViewBuilder extends StatelessWidget {
  const CustomMostPoullerListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: const CustomMostPoulerItemBuilder(),
          );
        });
  }
}
