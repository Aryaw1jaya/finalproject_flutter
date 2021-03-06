import 'dart:async';
import 'package:finalproject_flutter/constants/r.dart';
import 'package:finalproject_flutter/views/main_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String route = "splash_screen";

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 5),
      () {
        // Navigator.of(context).push(
        //   MaterialPageRoute(builder: (context) => LoginPage()),
        // );
        final user = FirebaseAuth.instance.currentUser;
        if (user != null) {
          // Redirect Register or Home
          Navigator.of(context).pushNamed(MainPage.route);
        } else {
          Navigator.of(context).pushNamed(LoginPage.route);
        }
      },
    );
    return Scaffold(
      backgroundColor: R.colors.primary,
      body: Center(
        child: Image.asset(
          R.assets.icSplash,
          height: 40,
        ),
      ),
    );
  }
}
