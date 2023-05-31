import 'package:beanbuzz/Themes/colors.dart';
import 'package:flutter/material.dart';
// import '../Themes/mytheme.dart';

class products extends StatelessWidget {
  const products({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.MyThemeColorbackground,
      body: Container(
        child: const Center(
          child: Text(
            'Products',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
