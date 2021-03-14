import 'package:flutter/material.dart';
import 'package:landing_page/theme.dart';
import 'package:landing_page/widgets/navbar.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("background.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.fill),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 30),
            child: ListView(
              children: [
                Navbar(),
                SizedBox(
                  height: 76,
                ),
                Image.asset(
                  "illustration.png",
                  height: 550,
                ),
                SizedBox(
                  height: 84,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "icon_scroll.png",
                      height: 24,
                      width: 24,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Scroll to learn more",
                      style: poppinsBlack,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
