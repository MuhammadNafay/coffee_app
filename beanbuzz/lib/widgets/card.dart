import 'package:beanbuzz/Themes/colors.dart';
import 'package:flutter/material.dart';

class Carad extends StatefulWidget {
  final String text;
  final String imageUrl;
  final String subtitle;

  const Carad(
      {required this.text,
      required this.imageUrl,
      required this.subtitle,
      Key? key})
      : super(key: key);

  @override
  State<Carad> createState() => _CaradState();
}

class _CaradState extends State<Carad> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      width: 250,
      // color: Colors.blueAccent,
      child: Stack(
        children: [
          Center(
            child: Container(
              height: 270,
              width: 230,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: AppColors.MyThemePrimaryColor, width: 3),
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          Positioned(
            top: 0,
            right: 55,
            child: Container(
              height: 140,
              width: 140,
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: ClipOval(
                  child: Image.network(widget.imageUrl, fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 20,
            child: Column(
              children: [
                Text(widget.text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: AppColors.MyThemePrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      fontFamily: 'Pacifico',
                    )),
                SizedBox(
                  width: 200,
                  child: Text(
                    widget.subtitle,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: AppColors.MyThemePrimaryColorLight,
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      // overflow: TextOverflow.ellipsis
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
