// import 'package:beanbuzz/Screens/authentication/login/login_home.dart';
import 'package:beanbuzz/widgets/bottomNavigationBar.dart';
import 'package:flutter/material.dart';
// import 'Screens/homepage.dart';
import 'Themes/mytheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.LightTheme,
      themeMode: ThemeMode.system,
      home: bottomNavBar(),
    );
  }
}
