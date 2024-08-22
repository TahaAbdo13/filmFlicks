import 'package:filmflicks/features/onBoardering_view/presentaion/views/onBoardring_view.dart';
import 'package:filmflicks/features/splash/presentaton/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const onBoarderingScreenView = "/OnBoardringScreenView";

  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: onBoarderingScreenView,
      builder: (context, state) => const OnboardringView(),
    ),
  ]);
}
