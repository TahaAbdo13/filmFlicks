import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:filmflicks/core/utils/app_router.dart';
import 'package:filmflicks/core/utils/constants.dart';
import 'package:filmflicks/core/utils/styles.dart';
import 'package:filmflicks/core/utils/widgets/custom_app_logo_widget.dart';
import 'package:filmflicks/core/utils/widgets/custom_app_name_widget.dart';
import 'package:filmflicks/features/authintication/presentation/manager/sign_up_cubit/sign_up_cubit.dart';
import 'package:filmflicks/features/authintication/presentation/views/widgets/custom_elvated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  @override
  void initState() {
    context.read<SignUpCubit>().handleDeepLink();
    super.initState();
  }

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
            child: BlocConsumer<SignUpCubit, SignUpState>(
              listener: (context, state) {
                if (state is SignUpCubitSuccess) {
                  Uri uri = Uri.parse(
                      "https://www.themoviedb.org/authenticate/${state.requestTokenModel.requestToken}?redirect_to=filmflicks://auth");

                  launchUrl(uri);
                  GoRouter.of(context).push(AppRouter.kBottomNaiagationBarview);

                  //هحتاج اتعلم Deep linking عشان ارجع للربرنامج بتاعي بعد عملية المصادقة
                } else if (state is SignUpCubitFailure) {
                  AwesomeDialog(
                          context: context,
                          customHeader: const Icon(
                            Icons.error,
                            size: 50,
                            color: Colors.red,
                          ),
                          title: "Error",
                          titleTextStyle:
                              Styles.h2.copyWith(color: kPrimaryColor),
                          descTextStyle: Styles.h5.copyWith(color: kWhiteColor),
                          desc: state.errMessage)
                      .show();
                }
              },
              builder: (context, state) {
                return CustomElevatedButton(
                  isLoading: state is SignUpCubitLoading ? true : false,
                  onPressed: () {
                    context.read<SignUpCubit>().signUp();
                  },
                  text: 'Sign Up',
                );
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: double.infinity,
            child: CustomElevatedButton(
              onPressed: () async {},
              text: 'Log  In',
            ),
          )
        ],
      ),
    );
  }
}
