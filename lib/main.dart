import "package:filmflicks/core/utils/app_router.dart";
import "package:filmflicks/core/utils/constants.dart";
import "package:filmflicks/firebase_options.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:firebase_core/firebase_core.dart";

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

void main()async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const FilmFlicks());
}

class FilmFlicks extends StatefulWidget {
  const FilmFlicks({super.key});

  @override
  State<FilmFlicks> createState() => _FilmFlicksState();
}

class _FilmFlicksState extends State<FilmFlicks> {
  @override
  void setState(VoidCallback fn) {
   FirebaseAuth.instance
  .authStateChanges()
  .listen((User? user) {
    if (user == null) {
      print('User is currently signed out!');
    } else {
      print('User is signed in!');
    }
  });
    super.setState(fn);
  }
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
