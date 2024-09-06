
import 'package:filmflicks/features/button_nav_bar/presentation/views/button_nav_bar_view.dart';
import 'package:filmflicks/features/onBoardering_view/presentaion/views/onBoardring_view.dart';
import 'package:filmflicks/features/splash/presentaton/views/splash_view.dart';




import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kOnBoarderingScreenView = "/OnBoardringScreenView";


  static const kBottomNaiagationBarview = "/BottomNaiagationBarview";
 


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
      path: kBottomNaiagationBarview,
      builder: (context, state) => const ButtonNavBarView(),
    ),
  
    
  
  ]);
}
