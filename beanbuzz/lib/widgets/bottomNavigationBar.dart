import 'package:beanbuzz/Screens/allProducts.dart';
import 'package:beanbuzz/Screens/homepage.dart';
import 'package:beanbuzz/Screens/profile.dart';
import 'package:beanbuzz/Themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class bottomNavBar extends StatefulWidget {
  const bottomNavBar({super.key});

  @override
  State<bottomNavBar> createState() => _bottomNavBarState();
}

class _bottomNavBarState extends State<bottomNavBar> {
  int index = 1;

  final screens = [
    const products(),
    const HomePage(),
    const profile(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(Icons.list_alt_rounded, size: 25),
      const Icon(Icons.home_max_rounded, size: 25),
      const Icon(Icons.person_rounded, size: 25),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.MyThemeColorbackground,
        elevation: 0,
        centerTitle: true,
        actions: const [
          Icon(
            Icons.notifications_outlined,
            color: AppColors.MyThemePrimaryColor,
          ),
          SizedBox(
            width: 20,
          ),
          CircleAvatar(
            radius: 20,
            child: ClipOval(
              child: Image(
                  image: NetworkImage(
                'assets/images/profile.jpg',
              )),
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: screens[index],
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(iconTheme: const IconThemeData(color: Colors.white)),
        child: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: AppColors.MyThemePrimaryColor,
          buttonBackgroundColor: AppColors.MyThemePrimaryColor,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 300),
          height: 60,
          index: index,
          items: items,
          onTap: (index) => setState(() => this.index = index),
        ),
      ),
    );
  }
}
