import 'package:flutter/material.dart';
class ButtonNavBarView extends StatelessWidget {
  const ButtonNavBarView({super.key});
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    List<Widget> screens = const [
      Center(child: Text("Home")),
      Center(child: Text("Search")),
    ];
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: ,
            onTap: (index) {},
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home")
            ]),
        body: screens[currentIndex + 1]);
  }
}
