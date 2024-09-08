import 'package:dio/dio.dart';
import 'package:filmflicks/core/utils/services/api_services.dart';
import 'package:filmflicks/features/authintication/data/repository/sign_up_repoImplementaion.dart';
import 'package:filmflicks/features/authintication/presentation/manager/sign_up_cubit/sign_up_cubit.dart';
import 'package:filmflicks/features/authintication/presentation/views/sign_in_view.dart';
import 'package:filmflicks/features/button_nav_bar/presentation/views/button_nav_bar_view.dart';
import 'package:filmflicks/features/onBoardering_view/presentaion/views/onBoardring_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kOnBoarderingScreenView = "/OnBoardringScreenView";
  static const kBottomNaiagationBarview = "/BottomNaiagationBarview";
  static const kSignInView = "/SignInView";

  static final GoRouter router = GoRouter(routes: [
    GoRoute(
        path: "/",
         builder: (context, state) => BlocProvider(
        create: (context) => SignUpCubit(
            SignUpRepoimplementaion(apiServices: ApiServices(dio: Dio()))),
        child: const SignInView(),
      ),),
    GoRoute(
      path: kOnBoarderingScreenView,
      builder: (context, state) => const OnboardringView(),
    ),
    GoRoute(
      path: kBottomNaiagationBarview,
      builder: (context, state) => const ButtonNavBarView(),
    ),
    GoRoute(
      path: kSignInView,
      builder: (context, state) => BlocProvider(
        create: (context) => SignUpCubit(
            SignUpRepoimplementaion(apiServices: ApiServices(dio: Dio()))),
        child: const SignInView(),
      ),
    ),
  ]);
}
