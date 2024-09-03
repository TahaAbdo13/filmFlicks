import 'package:flutter/material.dart';

class ButtonNavBarView extends StatelessWidget {
  const ButtonNavBarView({super.key});
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      bottomNavigationBar: BottomNavigationBar(items:const  []),
      body: const  Placeholder(),
    );
  }
}
