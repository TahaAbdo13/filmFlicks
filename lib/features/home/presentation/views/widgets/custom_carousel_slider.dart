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
                image: const DecorationImage(
                    image: NetworkImage(
                        "https://resizing.flixster.com/N_mT7aXktWbwhRlhR05PQpKC4aY=/fit-in/705x460/v2/https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p169917_v_h9_ab.jpg"),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(24)),
          ),
          Container(
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: NetworkImage(
                        "https://resizing.flixster.com/N_mT7aXktWbwhRlhR05PQpKC4aY=/fit-in/705x460/v2/https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p169917_v_h9_ab.jpg"),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(24)),
          ),
          Container(
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: NetworkImage(
                        "https://resizing.flixster.com/N_mT7aXktWbwhRlhR05PQpKC4aY=/fit-in/705x460/v2/https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p169917_v_h9_ab.jpg"),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(24)),
          ),
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
