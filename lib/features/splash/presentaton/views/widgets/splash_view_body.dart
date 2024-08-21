import 'package:filmflicks/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    slidinImageAnimation =
        Tween<Offset>(begin: const Offset(10, 0), end: Offset.zero)
            .animate(animationController);
    slidinTextAnimation =
        Tween<Offset>(begin: const Offset(-10, 0), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
    super.initState();
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
            child: SvgPicture.asset(
              "assets/images/appLogo.svg",
              height: 170,
              width: 170,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SlideTransition(
          position: slidinTextAnimation,
          child: const Text(
            "FILM FLICKS",
            style: Styles.h1,
          ),
        )
      ],
    );
  }
}
