import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomHomeViewSearch extends StatelessWidget {
  const CustomHomeViewSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: kSoft, borderRadius: BorderRadius.circular(24)),
      width: double.infinity,
      child: Row(
        children: [
          const Icon(
            Icons.search,
            color: kGreyColor,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            "Search a title...",
            style: Styles.h5.copyWith(fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          Container(
            height: 20,
            width: 1,
            color: kGreyColor,
          ),
          const SizedBox(
            width: 3,
          ),
          const Icon(Icons.tune)
        ],
      ),
    );
  }
}
