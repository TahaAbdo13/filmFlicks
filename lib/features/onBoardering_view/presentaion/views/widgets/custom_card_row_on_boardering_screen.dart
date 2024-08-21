import 'package:filmflicks/features/onBoardering_view/presentaion/views/widgets/custom_list_view_builder_card_on_bordering_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCardRowOnBoarderingScreen extends StatelessWidget {
  const CustomCardRowOnBoarderingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          const Expanded(
            child: SizedBox(
              height: 7,
              child: CustomListViewBuilderCardOnBorderingScreen(),
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () {},
            child: SvgPicture.asset(
              "assets/images/Next.svg",
              width: 70,
              height: 70,
            ),
          )
        ],
      ),
    );
  }
}
