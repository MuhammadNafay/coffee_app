import 'package:beanbuzz/Themes/colors.dart';
import 'package:flutter/material.dart';

class searchbar extends StatelessWidget {
  final String hintText;
  const searchbar({required this.hintText, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        child: TextField(
          cursorColor: AppColors.MyThemePrimaryColor,
          onChanged: (value) {},
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey[500]!,
            ),
            filled: true,
            fillColor: Colors.white,
            hintText: hintText,
            hintStyle: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w300),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(45.0)),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: AppColors.MyThemePrimaryColor, width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(45.0)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: AppColors.MyThemePrimaryColor, width: 1.5),
              borderRadius: BorderRadius.all(Radius.circular(45.0)),
            ),
          ),
        ),
      ),
    );
  }
}
