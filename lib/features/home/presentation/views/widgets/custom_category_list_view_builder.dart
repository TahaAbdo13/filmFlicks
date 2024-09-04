import 'package:filmflicks/features/home/presentation/views/widgets/custom_category_list_view_item_builder.dart';
import 'package:flutter/material.dart';

class CustomCategoryListViewBuilder extends StatefulWidget {
  const CustomCategoryListViewBuilder({
    super.key,
  });

  @override
  State<CustomCategoryListViewBuilder> createState() =>
      _CustomCategoryListViewBuilderState();
}

class _CustomCategoryListViewBuilderState
    extends State<CustomCategoryListViewBuilder> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List category = ["All", "Comedy", "Animation", "Action", "Documentation"];
    var hieght = MediaQuery.of(context).size.height;
    return SizedBox(
      height: hieght * .05,
      child: ListView.builder(
          itemCount: category.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = i;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: CustomCategoryListViewItemBuilder(
                  isActive: currentIndex == i ? true : false,
                  categoryTitle: category[i],
                ),
              ),
            );
          }),
    );
  }
}
