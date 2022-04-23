// ignore_for_file: file_names

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:jokko_marche/screens/cart/cart.dart';
import 'package:jokko_marche/screens/chat/chat.dart';
import 'package:jokko_marche/screens/sellers/dashboard.dart';

class BottonBar extends StatefulWidget {
  const BottonBar({Key? key}) : super(key: key);

  @override
  _BottonBarState createState() => _BottonBarState();
}

class _BottonBarState extends State<BottonBar> {
  int val = 0;
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: val,
      backgroundColor: Colors.transparent,
      color: Colors.grey.shade300,
      items: const <Widget>[
        Icon(Icons.home),
        Icon(Icons.message),
        Icon(Icons.favorite),
        Icon(Icons.shopping_cart_rounded),
        Icon(Icons.notifications),
        Icon(Icons.dashboard_rounded),
      ],
      onTap: (index) {
        //Handle button tap
        setState(() {
          val = index;
        });
        if (index == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Chat()),
          );
        }
        if (index == 3) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Cart()),
          );
        }
        if (index == 5) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Dashboard()),
          );
        }
      },
    );
  }
}
