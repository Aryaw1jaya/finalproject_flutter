import 'package:finalproject_flutter/constants/r.dart';
import 'package:finalproject_flutter/views/main/diskusi/chat_page.dart';
import 'package:finalproject_flutter/views/main/latihan_soal/home_page.dart';
import 'package:finalproject_flutter/views/main/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  static String route = "main_page";

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _pc = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image.asset(
            R.assets.btm_discuss,
            width: 40,
          ),
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ChatPage(),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _buildBottomNavigation(),
      body: PageView(
        controller: _pc,
        physics: NeverScrollableScrollPhysics(),
        children: [
          HomePage(),
          ProfilePage(),
        ],
      ),
    );
  }

  Container _buildBottomNavigation() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 20,
            color: Colors.black.withOpacity(0.06),
          ),
        ],
      ),
      child: BottomAppBar(
        color: Colors.white,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Material(
                  //BUTTON HOME
                  child: InkWell(
                    onTap: () {
                      index = 0;
                      _pc.animateToPage(index,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.bounceInOut);
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          R.assets.btm_home,
                          height: 30,
                        ),
                        Text("Home"),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Material(
              //BUTTON HOME
              child: InkWell(
                child: Column(
                  children: [
                    Opacity(
                      opacity: 0,
                      child: Image.asset(
                        R.assets.btm_discuss,
                        height: 30,
                      ),
                    ),
                    Text("Diskusi"),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Material(
                  //BUTTON HOME
                  child: InkWell(
                    onTap: () {
                      index = 1;
                      _pc.animateToPage(
                        index,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.bounceInOut,
                      );
                      setState(() {});
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          R.assets.btm_profile,
                          height: 30,
                        ),
                        Text("Profile"),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // color: Colors.amber,
      // child: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: [
      //     Column(
      //       children: [Image.asset(R.assets.btm_home), Text("Home")],
      //     ),
      //     Column(
      //       children: [Image.asset(R.assets.btm_discuss), Text("Discuss")],
      //     ),
      //     Column(
      //       children: [Image.asset(R.assets.btm_profile), Text("Profile")],
      //     ),
      //   ],
      // ),
    );
  }
}
