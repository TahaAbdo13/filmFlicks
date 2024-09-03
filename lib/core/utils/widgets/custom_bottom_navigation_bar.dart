import 'package:filmflicks/features/button_nav_bar/presentation/manager/botton_navigation_bar/botton_navigation_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: context.watch<BottonNavigationBarCubit>().state,
        onTap: (index) {
          context.read<BottonNavigationBarCubit>().updateIndex(index);
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home")
        ]);
  }
}
