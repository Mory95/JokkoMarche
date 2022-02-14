import 'package:flutter/material.dart';
import 'package:jokko_marche/screens/article/articleDetails.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ProductDetails()),
      ),
      child: GridTile(
        child: Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/home.png"),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        footer: Container(
          height: 50.0,
          decoration: const BoxDecoration(
            color: Colors.white38,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          child: const ListTile(
            leading: Text(
              'test: 1200f',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
