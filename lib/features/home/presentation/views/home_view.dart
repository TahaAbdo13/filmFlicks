import 'package:carousel_slider/carousel_slider.dart';
import 'package:filmflicks/features/home/presentation/views/widgets/custom_carousel_slider.dart';
import 'package:filmflicks/features/home/presentation/views/widgets/custom_home_view_app_bar.dart';
import 'package:filmflicks/features/home/presentation/views/widgets/custom_home_view_search.dart';
import 'package:flutter/material.dart';
class HomeView extends StatelessWidget {
 
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
       CarouselSliderController buttonCarouselController = CarouselSliderController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
      child: Column(
        children: [
          const CustomHomeViewAppBar(),
          const SizedBox(
            height: 32,
          ),
          const CustomHomeViewSearch(),
          const SizedBox(
            height: 24,
          ),
          CustomCarouselSlider(buttonCarouselController: buttonCarouselController,)
        ],
      ),
    );
  }
}
