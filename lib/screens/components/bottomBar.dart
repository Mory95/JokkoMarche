import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottonBar extends StatefulWidget {
  const BottonBar({Key? key}) : super(key: key);

  @override
  _BottonBarState createState() => _BottonBarState();
}

class _BottonBarState extends State<BottonBar> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      color: Colors.grey.shade300,
      items: const <Widget>[
        Icon(Icons.home),
        Icon(Icons.message),
        Icon(Icons.favorite),
        Icon(Icons.shopping_cart_rounded),
        Icon(Icons.notifications),
      ],
      onTap: (index) {
        //Handle button tap
        // print(index);
      },
    );
  }
}
