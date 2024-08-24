import 'package:filmflicks/features/onBoardering_view/presentaion/views/onBoardring_view.dart';
import 'package:filmflicks/features/registeraion/presentation/views/login_view.dart';
import 'package:filmflicks/features/registeraion/presentation/views/reset_password_view.dart';
import 'package:filmflicks/features/registeraion/presentation/views/sign_up_view.dart';
import 'package:filmflicks/features/registeraion/presentation/views/verifying_view.dart';
import 'package:filmflicks/features/registeraion/presentation/views/wellcome_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const onBoarderingScreenView = "/OnBoardringScreenView";
  static const wellcomeView = "/wellcomeview";
  static const loginView = "/loginView";
  static const signView = "/signView";
  static const resetPasswordView = "/resetPasswordView";
  static const verifyingView = "/verifyingViewBody";

  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const VerifyingView(),
    ),
    GoRoute(
      path: onBoarderingScreenView,
      builder: (context, state) => const OnboardringView(),
    ),
    GoRoute(
      path: wellcomeView,
      builder: (context, state) => const WellcomeView(),
    ),
    GoRoute(
      path: loginView,
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      path: signView,
      builder: (context, state) => const SignUpView(),
    ),
    GoRoute(
      path: verifyingView,
      builder: (context, state) => const VerifyingView(),
    ),
    GoRoute(
      path: resetPasswordView,
      builder: (context, state) => const ResetPasswordView(),
    ),
  ]);
}
