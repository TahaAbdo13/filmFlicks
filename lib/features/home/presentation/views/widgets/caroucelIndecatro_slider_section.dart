import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:filmflicks/features/home/presentation/views/widgets/custom_carousel_slider.dart';
import 'package:filmflicks/features/onBoardering_view/presentaion/views/widgets/custom_list_view_builder_item_on_boardering_screen.dart';
import 'package:flutter/material.dart';

class CaroucelIndicatorSliderSection extends StatefulWidget {
  const CaroucelIndicatorSliderSection({
    super.key,
  });

  @override
  State<CaroucelIndicatorSliderSection> createState() =>
      _CaroucelIndicatorSliderSectionState();
}

class _CaroucelIndicatorSliderSectionState
    extends State<CaroucelIndicatorSliderSection> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    CarouselSliderController buttonCarouselController =
        CarouselSliderController();
    return Column(
      children: [
        CustomCarouselSlider(
          buttonCarouselController: buttonCarouselController,
          onPageChanged: (index, carouselPageChangedReason) {
            setState(() {
            
              currentIndex = index;
            });
          },
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 7,
                width: 55,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, i) {
                      return CustomListViewBuilderItemOnBoarderingScreen(
                          isActive: currentIndex == i ? true : false);
                    })),
          ],
        )
      ],
    );
  }
}
