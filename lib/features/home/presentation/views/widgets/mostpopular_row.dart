import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:flutter/material.dart';

class MostpopularRow extends StatelessWidget {
  const MostpopularRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Most popular",
          style: Styles.h4,
        ),
        const Spacer(),
        GestureDetector(
          onTap: (){},
          child: Text(
            "See All",
            style: Styles.h5.copyWith(color: kPrimaryColor),
          ),
        )
      ],
    );
  }
}
