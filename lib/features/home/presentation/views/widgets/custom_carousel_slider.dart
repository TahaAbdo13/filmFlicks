import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({
    super.key,
    required this.buttonCarouselController,
  
  });

  final CarouselSliderController buttonCarouselController;
 

  @override
  Widget build(BuildContext context) {
        var hieght = MediaQuery.of(context).size.height;
    return CarouselSlider(
      carouselController:buttonCarouselController ,
        items: [
          Container(
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(24)),
          )
        ],
        options: CarouselOptions(
          height: hieght * .20,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          onPageChanged: (index, jwfj) {},
          scrollDirection: Axis.horizontal,
        ));
  }
}
