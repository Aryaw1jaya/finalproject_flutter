import 'package:finalproject_flutter/views/login_page.dart';
import 'package:finalproject_flutter/views/main/latihan_soal/mapel_page.dart';
import 'package:finalproject_flutter/views/main/latihan_soal/paket_soal_page.dart';
import 'package:finalproject_flutter/views/main_page.dart';
import 'package:finalproject_flutter/views/register_page.dart';
import 'package:finalproject_flutter/views/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      // options: DefaultFirebaseOptions.currentPlatform,
      );
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
        primarySwatch: Colors.blue,
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
