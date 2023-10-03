import 'package:flutter/material.dart';
import 'package:recognize_me/app_theme.dart';
import 'package:recognize_me/screens/main_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme,
      home: const MainMenuScreen(),
    );
  }
}
