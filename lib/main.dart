import 'package:flutter/material.dart';
import 'package:mohan/features/app/splash%20screen/splash_screen.dart';
import 'package:mohan/features/user_auth/presentation/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mohan Adhikar',
      home:SplashScreen(
        child: LoginPage(),
      )
    );
  }
}


