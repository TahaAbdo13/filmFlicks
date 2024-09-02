import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/core/utils/functions/show_snack_bar.dart';
import 'package:filmflicks/features/registeraion/presentation/manager/wellcome_sigIn_google/wellcome_sign_in_google_cubit.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_circle_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpWihIconRow extends StatelessWidget {
  const SignUpWihIconRow({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WellcomeSignInGoogleCubit, WellcomeSignInGoogleState>(
      listener: (context, state) {
        if (state is WellcomeSignInGoogleCubitSuccess) {
          showSnackBarMethod(context, state.successMessage);
        }
      },
      builder: (context, state) {
        return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomCircleAvatar(
                color: kWhiteColor,
                circleImage: 'assets/images/Icon - Google.svg',
                onTap: () {},
                isLoading:
                    state is WellcomeSignInGoogleCubitLoading ? true : false,
              ),
              CustomCircleAvatar(
                color: kSoft,
                circleImage: 'assets/images/Icon - Apple.svg',
                onTap: () {},
                isLoading:
                    state is WellcomeSignInGoogleCubitLoading ? true : false,
              ),
              CustomCircleAvatar(
                color: Colors.blue.withOpacity(0.6),
                circleImage: 'assets/images/Icon - Facebook.svg',
                onTap: () {},
                isLoading:
                    state is WellcomeSignInGoogleCubitLoading ? true : false,
              ),
            ]);
      },
    );
  }
}
