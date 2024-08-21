import 'package:filmflicks/features/splash/presentaton/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(routes: [
    GoRoute(path: "/",builder: (context, state) =>const SplashView(),)
  ]);
}