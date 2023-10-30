import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zoom1/resources/auth_methods.dart';
import 'package:zoom1/screens/Homescree.dart';

import 'package:zoom1/screens/Login.dart';
import 'package:zoom1/screens/video_screen.dart';
import 'package:zoom1/utils/Color.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        '/video-call':(context)=>const VideoCallScreen(),
        '/home':(context)=> const HomeScreen()
      },
      home: StreamBuilder(
        stream: AuthMethods().authChanges,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasData) {
            return const HomeScreen();
          }

          return const SignUp();
        },
      ),
    
      
    );
  }
}
