
import 'package:filmflicks/core/utils/widgets/custom_app_logo_widget.dart';
import 'package:filmflicks/core/utils/widgets/custom_app_name_widget.dart';
import 'package:filmflicks/features/authintication/presentation/views/widgets/custom_elvated_button.dart';
import 'package:flutter/material.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

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
            child: CustomElevatedButton(
              onPressed: () async {
                // Dio dio = Dio();
                //  dio.options.headers={
                //   'Authorization': 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwYWQ5YTFlMGZlNTNlZjY1ZTdkZjRjN2FmY2JlODBlMSIsIm5iZiI6MTcyNTQ0ODA1OC43MjE5MjQsInN1YiI6IjY2ZDgzY2U2ODZjNmI0Y2QzODI5ZTNiZCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.hvHK_KHjn8z3uP7eAiheerb7hbsfFLMIsvyjzBbXhiw'
                  
                //                 };
                // var repose = await dio.get(
                //   "https://api.themoviedb.org/3/authentication/token/new",
            
                  
                // );
               

                // var token = repose.data;
                // print("=====$token=======================");
              },
              text: 'Sign Up',
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: double.infinity,
            child: CustomElevatedButton(
              onPressed: () {},
              text: 'Log  In',
            ),
          )
        ],
      ),
    );
  }
}
