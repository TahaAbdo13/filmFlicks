import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:filmflicks/features/home/presentation/views/widgets/custom_evluatecontainer.dart';
import 'package:flutter/material.dart';

class CustomMostPoulerItemBuilder extends StatelessWidget {
  const CustomMostPoulerItemBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var hieght = MediaQuery.of(context).size.height;
    return AspectRatio(
      aspectRatio: .6,
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: hieght * .2,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.europosters.eu/image/750/posters/batman-v-superman-dawn-of-justice-superman-i28805.jpg"),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12))),
              ),
              Container(
                height: hieght * .1,
                padding:
                    const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                decoration: const BoxDecoration(
                    color: kSoft,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Spider-Man NoSpider-Man No..",
                      style: Styles.h5.copyWith(color: kWhiteColor),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Text(
                      "Action",
                      style: Styles.h5,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Positioned(top: 8, right: 8, child: CustomEvluatecontainer())
        ],
      ),
    );
  }
}
