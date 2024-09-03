
import 'package:filmflicks/features/home/presentation/views/widgets/caroucelIndecatro_slider_section.dart';
import 'package:filmflicks/features/home/presentation/views/widgets/custom_home_view_app_bar.dart';
import 'package:filmflicks/features/home/presentation/views/widgets/custom_home_view_search.dart';
import 'package:flutter/material.dart';
class HomeView extends StatelessWidget {
 
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
      
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
      child: Column(
        children: [
          CustomHomeViewAppBar(),
          SizedBox(
            height: 32,
          ),
          CustomHomeViewSearch(),
          SizedBox(
            height: 24,
          ),
          CaroucelIndicatorSliderSection(),
      
        
        ],
      ),
    );
  }
}


