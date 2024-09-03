import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_back_button.dart';
import 'package:flutter/material.dart';

class CustomHomeViewAppBar extends StatelessWidget {
  const CustomHomeViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: const CircleAvatar(
        radius: 25,
        backgroundColor: kWhiteColor,
      ),
      title: const Text('Hello,Taha', style: Styles.h4),
      subtitle: Text('Let’s stream your favorite movie',
          style: Styles.h6.copyWith(fontWeight: FontWeight.bold)),
      trailing: CustomBackButton(
        iconData: Icons.favorite,
        onTap: () {},
        size: 30,
        color: Colors.red,
      ),
    );
  }
}
