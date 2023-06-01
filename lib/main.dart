import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'pages/AdminPage.dart';
import 'pages/Homepage.dart';
import 'pages/Login.dart';
import 'pages/Splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const SplashScreenPage(),
      'login_page': (context) => const LoginPage(),
      'homepage': (context) => const Homepage(),
      'adminPage': (context) => const AdminPage(),
    },
  ));
}
