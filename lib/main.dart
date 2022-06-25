import 'package:finalproject_flutter/views/login_page.dart';
import 'package:finalproject_flutter/views/main/latihan_soal/mapel_page.dart';
import 'package:finalproject_flutter/views/main/latihan_soal/paket_soal_page.dart';
import 'package:finalproject_flutter/views/main_page.dart';
import 'package:finalproject_flutter/views/register_page.dart';
import 'package:finalproject_flutter/views/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Final Project',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      // home: const SplashScreen(),
      initialRoute: "/",
      routes: {
        // "/": (context) => const MainPage(),
        "/": (context) => const SplashScreen(),
        LoginPage.route: (context) => const LoginPage(),
        RegisterPage.route: (context) => RegisterPage(),
        MainPage.route: (context) => MainPage(),
        MapelPage.route: (context) => MapelPage(),
        PaketSoalPage.route: (context) => PaketSoalPage(),
      },
    );
  }
}
