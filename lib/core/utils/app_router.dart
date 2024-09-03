import 'package:filmflicks/features/button_nav_bar/presentation/views/button_nav_bar_view.dart';
import 'package:filmflicks/features/onBoardering_view/presentaion/views/onBoardring_view.dart';
import 'package:filmflicks/features/registeraion/data/repository/log_in_repoImple.dart';
import 'package:filmflicks/features/registeraion/data/repository/sign_up_repoimple.dart';
import 'package:filmflicks/features/registeraion/data/repository/verifieng_email_repoImplementaion.dart';
import 'package:filmflicks/features/registeraion/data/repository/wellcome_repoImple.dart';
import 'package:filmflicks/features/registeraion/presentation/manager/log_in_cubit/login_in_cubit_cubit.dart';
import 'package:filmflicks/features/registeraion/presentation/manager/sign_in_cubit/sign_in_cubit_cubit.dart';
import 'package:filmflicks/features/registeraion/presentation/manager/verifieng_email_cubit/verifieng_cubit_cubit.dart';
import 'package:filmflicks/features/registeraion/presentation/manager/social_auth/social_auth_cubit.dart';
import 'package:filmflicks/features/registeraion/presentation/views/login_view.dart';
import 'package:filmflicks/features/registeraion/presentation/views/reset_password_view.dart';
import 'package:filmflicks/features/registeraion/presentation/views/sign_up_view.dart';
import 'package:filmflicks/features/registeraion/presentation/views/wellcome_view.dart';
import 'package:filmflicks/features/splash/presentaton/views/splash_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kOnBoarderingScreenView = "/OnBoardringScreenView";
  static const kWellcomeView = "/wellcomeview";
  static const kLoginView = "/loginView";
  static const kSignView = "/signView";
  static const kResetPasswordView = "/resetPasswordView";
  static const kVerifyingView = "/verifyingView";
  static const kCreateNewPasswordview = "/createNewPassowrdView";
  static const kBottomNaiagationBarview = "/BottomNaiagationBarview";

  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const ButtonNavBarView(),
    ),
    GoRoute(
      path: kOnBoarderingScreenView,
      builder: (context, state) => const OnboardringView(),
    ),
    GoRoute(
      path: kBottomNaiagationBarview,
      builder: (context, state) => const ButtonNavBarView(),
    ),
    GoRoute(
      path: kWellcomeView,
      builder: (context, state) => BlocProvider(
        create: (context) => SocialAuthCubit(WellcomeRepoimple( )),
        child: const WellcomeView(),
      ),
    ),
    GoRoute(
      path: kLoginView,
      builder: (context, state) => BlocProvider(
        create: (context) =>
            LoginInCubitCubit(LogInRepoimple(FirebaseAuth.instance)),
        child: const LoginView(),
      ),
    ),
    GoRoute(
      path: kSignView,
      builder: (context, state) => BlocProvider(
        create: (context) => SignInCubitCubit(SignUpRepoimple()),
        child: const SignUpView(),
      ),
    ),
    GoRoute(
      path: kResetPasswordView,
      builder: (context, state) => BlocProvider(
        create: (context) => VerifiengCubitCubit(
            VerifiengEmailRepoimplementaion(FirebaseAuth.instance)),
        child: const ResetPasswordView(),
      ),
    ),
  ]);
}
