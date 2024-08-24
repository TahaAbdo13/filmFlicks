import 'package:filmflicks/features/onBoardering_view/presentaion/views/onBoardring_view.dart';
import 'package:filmflicks/features/registeraion/presentation/views/create_new_password.dart';
import 'package:filmflicks/features/registeraion/presentation/views/login_view.dart';
import 'package:filmflicks/features/registeraion/presentation/views/reset_password_view.dart';
import 'package:filmflicks/features/registeraion/presentation/views/sign_up_view.dart';
import 'package:filmflicks/features/registeraion/presentation/views/verifying_view.dart';
import 'package:filmflicks/features/registeraion/presentation/views/wellcome_view.dart';
import 'package:filmflicks/features/splash/presentaton/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kOnBoarderingScreenView = "/OnBoardringScreenView";
  static const kWellcomeView = "/wellcomeview";
  static const kLoginView = "/loginView";
  static const kSignView = "/signView";
  static const kResetPasswordView = "/resetPasswordView";
  static const kVerifyingView = "/verifyingViewBody";
  static const kCreateNewPasswordview = "/createNewPassowrdView";


  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kOnBoarderingScreenView,
      builder: (context, state) => const OnboardringView(),
    ),
    GoRoute(
      path: kWellcomeView,
      builder: (context, state) => const WellcomeView(),
    ),
    GoRoute(
      path: kLoginView,
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      path: kSignView,
      builder: (context, state) => const SignUpView(),
    ),
    GoRoute(
      path: kVerifyingView,
      builder: (context, state) => const VerifyingView(),
    ),
    GoRoute(
      path: kResetPasswordView,
      builder: (context, state) => const ResetPasswordView(),
    ),
    GoRoute(
      path: kCreateNewPasswordview,
      builder: (context, state) => const CreateNewPasswordView(),
    ),
  ]);
}
