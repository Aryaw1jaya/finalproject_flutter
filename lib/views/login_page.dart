import 'package:finalproject_flutter/constants/R/strings.dart';
import 'package:finalproject_flutter/constants/r.dart';
import 'package:finalproject_flutter/views/register_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const String route = "login_screen";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.colors.white,
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                R.strings.login,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Image.asset(R.assets.imgLogin),
            SizedBox(
              height: 25,
            ),
            Text(
              R.strings.welcome,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              R.strings.login_desc,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 80, 80, 80),
                fontSize: 14,
              ),
            ),
            Spacer(),
            ButtonLogin(
              // Login with Google
              onTap: () {
                Navigator.of(context).pushReplacementNamed(RegisterPage.route);
              },
              backgroundColor: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(R.assets.ic_google),
                  Text(
                    R.strings.login_google,
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              borderColor: R.colors.primary,
            ),
            ButtonLogin(
              // Login with Apple
              onTap: () {},
              backgroundColor: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(R.assets.ic_apple),
                  Text(
                    R.strings.login_apple,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              borderColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({
    Key? key,
    required this.backgroundColor,
    required this.child,
    required this.borderColor,
    required this.onTap,
  }) : super(key: key);

  final Color backgroundColor;
  final Widget child;
  final Color borderColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      // Button Google
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: backgroundColor,
              elevation: 0,
              fixedSize: Size(MediaQuery.of(context).size.width * 0.8, 50),
              shape: RoundedRectangleBorder(
                side: BorderSide(color: borderColor),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            onPressed: onTap,
            child: child,
          ),
        ],
      ),
    );
  }
}
