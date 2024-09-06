
import 'package:filmflicks/core/utils/widgets/custom_app_logo_widget.dart';
import 'package:filmflicks/core/utils/widgets/custom_app_name_widget.dart';
import 'package:filmflicks/features/authintication/presentation/views/widgets/custom_elvated_button.dart';
import 'package:flutter/material.dart';


class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomAppLogoWidget(),
          const SizedBox(
            height: 10,
          ),
          const CustomAppNameWidget(),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: double.infinity,
            child: CustomElevatedButton(
              onPressed: () {},
              text: 'Sign Up',
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: double.infinity,
            child: CustomElevatedButton(
              onPressed: () {},
              text: 'Log  In',
            ),
          )
        ],
      ),
    );
  }
}
