// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:jokko_marche/screens/home/home.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Center(child: const Text('Jokko Marche')),),
      // body: Center(
      //     child: Text(
      //         "Le marcher s'invite chez\nvous lancer vous dans \nun nouveau monde."),
      //         ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/home.png"), fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            SizedBox(
              height: 150,
            ),
            Text(
              "Le marcher s'invite chez\nvous lancer vous dans \nun nouveau monde.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            InkWell(
              onTap: () {
                // Navigator.push(//pushAndRemoveUntil
                //   context,
                //   MaterialPageRoute(builder: (context) => const Home()),
                // );
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) =>Home(),),
                    (Route<dynamic> route) => false);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blue,
                ),
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children:const [
                    Text('Se lancer',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold),),
                    Icon(Icons.arrow_forward_sharp,color: Colors.white,),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
