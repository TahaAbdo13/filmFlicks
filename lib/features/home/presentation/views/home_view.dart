import 'package:filmflicks/core/utils/styles.dart';
import 'package:filmflicks/features/home/presentation/views/widgets/caroucelIndecatro_slider_section.dart';
import 'package:filmflicks/features/home/presentation/views/widgets/custom_category_list_view_builder.dart';
import 'package:filmflicks/features/home/presentation/views/widgets/custom_home_view_app_bar.dart';
import 'package:filmflicks/features/home/presentation/views/widgets/custom_home_view_search.dart';

import 'package:filmflicks/features/home/presentation/views/widgets/custom_most_pouller_list_view_builder.dart';
import 'package:filmflicks/features/home/presentation/views/widgets/mostpopular_row.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    var hieght = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 24, bottom: 8),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: CustomHomeViewAppBar(),
            ),
            const SizedBox(
              height: 32,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: CustomHomeViewSearch(),
            ),
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
            const CustomCategoryListViewBuilder(),
            const SizedBox(
              height: 21,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: MostpopularRow(),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: hieght * 0.30,
              child: const CustomMostPoullerListViewBuilder(),
            )
          ],
        ),
      ),
    );
  }
}
