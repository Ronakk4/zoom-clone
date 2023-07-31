import 'package:flutter/material.dart';
import 'package:zoom1/pages/Login.dart';
import 'package:zoom1/utils/Color.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Zoom Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),routes: {
        '/login': (context) => const SignUp(),
      },
      home: const SignUp(),
      
    );
  }
}
