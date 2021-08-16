import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: false,
      showSelectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/icons/home_filled.png",
            scale: 2.0,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/icons/search.png",
            scale: 2.0,
          ),
          label: "Search",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/icons/plus_outline.png",
            scale: 2.0,
          ),
          label: "add",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/icons/love_outline.png",
            scale: 2.0,
          ),
          label: "activity",
        ),
        BottomNavigationBarItem(
          icon: ClipOval(
            child: Image.asset(
              "assets/avatars/user.jpeg",
              width: 25,
            ),
          ),
          label: "activity",
        ),
      ],
    );
  }
}
