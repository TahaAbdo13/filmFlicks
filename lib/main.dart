import "package:filmflicks/core/utils/app_router.dart";
import "package:filmflicks/core/utils/constants.dart";

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

void main() {
  runApp(const FilmFlicks());
}

class FilmFlicks extends StatelessWidget {
  const FilmFlicks({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
        theme: ThemeData.dark(useMaterial3: true).copyWith(
            scaffoldBackgroundColor: kSoft,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)));
  }
}
