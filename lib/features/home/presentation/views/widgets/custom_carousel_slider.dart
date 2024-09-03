import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCarouselSlider extends StatelessWidget {
  final void Function(int, CarouselPageChangedReason) onPageChanged;

  const CustomCarouselSlider({
    super.key,
    required this.buttonCarouselController,
    required this.onPageChanged,
  });

  final CarouselSliderController buttonCarouselController;

  @override
  Widget build(BuildContext context) {
    var hieght = MediaQuery.of(context).size.height;
    return CarouselSlider(
        carouselController: buttonCarouselController,
        items: [
          Container(
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(24)),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(24)),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(24)),
          )
        ],
        options: CarouselOptions(
            animateToClosest: true,
            height: hieght * .18,
            viewportFraction: 0.8,
            autoPlay: true,
            initialPage: 0,
            enableInfiniteScroll: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            onPageChanged: onPageChanged,
            scrollDirection: Axis.horizontal,
            pageSnapping: true));
  }
}
