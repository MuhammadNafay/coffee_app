import 'package:flutter/material.dart';

class MyChips extends StatelessWidget {
  const MyChips({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Padding(
        padding: const EdgeInsets.only(),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20.0),
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              Chip(
                  label: Text('Cooking & Eating'),
                  avatar: Icon(
                    Icons.restaurant,
                    color: Colors.pink,
                  )),
            ],
          ),
        ),
      ),
    ));
  }
}
