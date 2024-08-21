import 'package:flutter/material.dart';
import 'custom_card_on_bordering_screen.dart';

class OnboardringViewBody extends StatelessWidget {
  const OnboardringViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    var hieght = MediaQuery.of(context).size.height;
    List<Widget> onBoarderingScreen = [
      Stack(
        children: [
          Container(
            height: hieght,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Image.png"),
                    fit: BoxFit.fill)),
          ),
          CustomCardOnBorderingScreen(hieght: hieght)
        ],
      ),
      Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Image.png"),
                    fit: BoxFit.fill)),
          ),
          CustomCardOnBorderingScreen(hieght: hieght)
        ],
      ),
    ];
    return PageView.builder(
        itemCount: onBoarderingScreen.length,
        itemBuilder: (context, i) {
          return onBoarderingScreen[i];
        });
  }
}
