import 'package:flutter/material.dart';
import 'package:videocall_app/const/colors.dart';
import 'package:videocall_app/screenz/login_scr.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      //koristimo imenovanve rute za navigaciju kroz našu app
      //ako ima više ekrana
      routes: {
        '/loggin': (context) => const LoginScreen(),
      },
      home: const LoginScreen(),
    );
  }
}
