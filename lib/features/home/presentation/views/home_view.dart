import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:filmflicks/features/home/presentation/views/widgets/caroucelIndecatro_slider_section.dart';
import 'package:filmflicks/features/home/presentation/views/widgets/custom_category_list_view_builder.dart';
import 'package:filmflicks/features/home/presentation/views/widgets/custom_category_list_view_item_builder.dart';
import 'package:filmflicks/features/home/presentation/views/widgets/custom_home_view_app_bar.dart';
import 'package:filmflicks/features/home/presentation/views/widgets/custom_home_view_search.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomHomeViewAppBar(),
          const SizedBox(
            height: 32,
          ),
          const CustomHomeViewSearch(),
          const SizedBox(
            height: 24,
          ),
          const CaroucelIndicatorSliderSection(),
          const SizedBox(
            height: 24,
          ),
          const Text(
            "Categories",
            style: Styles.h4,
          ),
          const SizedBox(
            height: 15,
          ),
          CustomCategoryListViewBuilder()
        ],
      ),
    );
  }
}
