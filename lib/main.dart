import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mohan/features/app/splash%20screen/splash_screen.dart';
import 'package:mohan/features/user_auth/presentation/pages/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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


