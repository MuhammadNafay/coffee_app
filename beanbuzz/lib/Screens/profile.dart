import 'package:beanbuzz/Themes/colors.dart';
import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.MyThemeColorbackground,
        body: Center(
          child: Container(
            child: Text('Profile'),
          ),
        ));
  }
}
