import 'dart:async';

import 'package:filmflicks/core/utils/app_router.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:filmflicks/core/utils/widgets/custom_app_logo_widget.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import '../../../../../core/utils/widgets/custom_app_name_widget.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidinImageAnimation;
  late Animation<Offset> slidinTextAnimation;
  @override
  void initState() {
        super.initState();
    navigatorMethod();

    animationMethod();
  }

  void navigatorMethod() {
     Timer(const Duration(seconds: 5), () {
      GoRouter.of(context).go(AppRouter.onBoarderingScreenView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: SlideTransition(
            position: slidinImageAnimation,
            child:const CustomAppLogoWidget(),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SlideTransition(
          position: slidinTextAnimation,
          child:const CustomAppNameWidget(),
        )
      ],
    );
  }

  void animationMethod() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    slidingImageAnimationMethod();
    slidinganTextAnimationMethod();
    animationController.forward();
  }

  void slidingImageAnimationMethod() {
    slidinImageAnimation =
        Tween<Offset>(begin: const Offset(10, 0), end: Offset.zero)
            .animate(animationController);
  }

  void slidinganTextAnimationMethod() {
    slidinTextAnimation =
        Tween<Offset>(begin: const Offset(-10, 0), end: Offset.zero)
            .animate(animationController);
  }
}
