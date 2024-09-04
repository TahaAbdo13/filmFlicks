import 'package:filmflicks/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomEvluatecontainer extends StatelessWidget {
  const CustomEvluatecontainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 55,
      height: 24,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: const Color(0xff252836).withOpacity(.32)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.star,
            color: Colors.orange,
            size: 20,
          ),
          const SizedBox(
            width: 2,
          ),
          Text(
            "4.5",
            style: Styles.h6.copyWith(color: Colors.orange),
          )
        ],
      ),
    );
  }
}
