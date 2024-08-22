import 'package:filmflicks/features/onBoardering_view/presentaion/views/onBoardring_view.dart';
import 'package:filmflicks/features/registeraion/presentation/views/wellcome_view.dart';

import 'package:filmflicks/features/splash/presentaton/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const onBoarderingScreenView = "/OnBoardringScreenView";
  static const wellcomeView = "/wellcomeview";

  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: onBoarderingScreenView,
      builder: (context, state) => const OnboardringView(),
    ),
    GoRoute(
      path: wellcomeView,
      builder: (context, state) => const WellcomeView(),
    ),
  ]);
}
