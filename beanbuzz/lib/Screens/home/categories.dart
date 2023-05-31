import 'package:beanbuzz/Themes/colors.dart';
import 'package:flutter/material.dart';

class category extends StatefulWidget {
  const category({super.key});

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  final List category = [
    {"name": "Recomended"},
    {"name": "Capachinoo"},
    {"name": "Alpachino"},
    {"name": "Alpachino"},
    {"name": "Alpachino"},
    {"name": "Alpachino"},
    {"name": "Alpachino"},
    {"name": "Alpachino"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: category.map((categories) {
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Chip(
              backgroundColor: AppColors.MyThemePrimaryColor,
              label: Text(
                categories["name"] as String,
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
