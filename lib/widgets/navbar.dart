import 'package:flutter/material.dart';

import '../theme.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset("logo.png", width: 72, height: 40),
        Row(
          children: [
            navbarItem(
              title: "Guides",
              index: 0,
            ),
            SizedBox(
              width: 50,
            ),
            navbarItem(
              title: "Pricing",
              index: 1,
            ),
            SizedBox(
              width: 50,
            ),
            navbarItem(
              title: "Team",
              index: 2,
            ),
            SizedBox(
              width: 50,
            ),
            navbarItem(
              title: "Stories",
              index: 3,
            ),
          ],
        ),
        ConstrainedBox(
          constraints: BoxConstraints.tightFor(height: 40, width: 160),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
            ),
            child: Text(
              "Login",
              style: poppinsWhite,
            ),
          ),
        )
      ],
    );
  }

  Widget navbarItem({title, index}) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: poppinsBlack.copyWith(
                fontWeight:
                    index == selectedIndex ? FontWeight.bold : FontWeight.w300),
          ),
          Container(
            height: 2,
            width: 66,
            decoration: BoxDecoration(
                color: index == selectedIndex
                    ? Color(0xffFE998D)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(20)),
          )
        ],
      ),
    );
  }
}
