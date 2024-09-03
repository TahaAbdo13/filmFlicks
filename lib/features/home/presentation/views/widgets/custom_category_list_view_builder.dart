import 'package:filmflicks/features/home/presentation/views/widgets/custom_category_list_view_item_builder.dart';
import 'package:flutter/material.dart';

class CustomCategoryListViewBuilder extends StatelessWidget {
  const CustomCategoryListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List category = ["All", "Comedy", "Animation", "Action", "Documentation"];
    var hieght = MediaQuery.of(context).size.height;
    return SizedBox(
      height: hieght * .06,
      child: ListView.builder(
          itemCount: category.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CustomCategoryListViewItemBuilder(category: category, i: i,),
            );
          }),
    );
  }
}
