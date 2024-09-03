import 'package:filmflicks/core/utils/widgets/custom_bottom_navigation_bar.dart';
import 'package:filmflicks/features/button_nav_bar/presentation/manager/botton_navigation_bar/botton_navigation_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonNavBarView extends StatelessWidget {
  const ButtonNavBarView({super.key});
  @override
  Widget build(BuildContext context) {
    List<Widget> screens = const [
      Center(child: Text("Home")),
      Center(child: Text("Search")),
    ];
    return Scaffold(
        bottomNavigationBar:const CustomBottomNavigationBar(),
        body: BlocBuilder<BottonNavigationBarCubit, int>(
          builder: (context, state) {
            return screens[state];
          },
        ));
  }
}
