// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jokko_marche/screens/sellers/productManagerPage.dart';

class StockManager extends StatelessWidget {
  const StockManager({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var heightScreen = MediaQuery.of(context).size.height;
    var widthScreen = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Géré mon stock'),
        ),
        body: Container(
          margin: const EdgeInsets.all(15),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  // height: heightScreen/3,
                  // width: widthScreen/2,
                  // color: Colors.brown,
                  child: Row(
                    children: [
                      Expanded(
                        child: Wrap(
                          direction: Axis.vertical,
                          children: [
                            InkWell(
                              onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductManager(),),
                    ),
                              child: SizedBox(
                                height: (heightScreen / 3) / 2,
                                width: (widthScreen / 2) - 20,
                                child: Card(
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.category_outlined,
                                          size: 60,
                                        ),
                                        Text('Produits',style: TextStyle(fontSize: 20),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () => print('commande'),
                              child: SizedBox(
                                height: ((heightScreen / 3) / 2),
                                width: (widthScreen / 2) - 20,
                                child: Card(
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.shopping_basket_outlined,
                                          size: 60,
                                        ),
                                        Text('Commande',style: TextStyle(fontSize: 20),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () => print('Client'),
                          child: SizedBox(
                              height: (heightScreen / 3),
                              child: Card(
                                child: Center(
                                    child: Column(
                                  children: [
                                    Icon(
                                      Icons.person_outline_rounded,
                                      size: 150,
                                    ),
                                    Text('Client',
                                        style: TextStyle(fontSize: 30),),
                                  ],
                                )),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () => print('Fournisseur'),
                  child: Center(
                    child: Container(
                      color: Colors.amber,
                      height: (heightScreen / 3) / 2,
                      width: widthScreen,
                      child: Column(
                        children: [
                          Icon(
                            Icons.person,
                            size: 60,
                          ),
                          Text('Fournisseur',style: TextStyle(fontSize: 30),) //,
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () => print('gérer bon'),
                        child: Container(
                          color: Colors.blueGrey,
                          // height: 100,
                          child: Center(
                            child: Column(
                              children: [
                                Icon(
                                  Icons.file_upload_outlined,
                                  size: 100,
                                ),
                                Text('Gérer', style: TextStyle(fontSize: 30),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 2,
                      child: InkWell(
                        onTap: () => print("Lancer appel d'offre"),
                        child: Container(
                          color: Colors.green,
                          // height: 100,
                          child: Center(
                            child: Column(
                              children: [
                                Icon(
                                  Icons.add_box_outlined,
                                  size: 100,
                                ),
                                Text("Lancer appel d'offre",style: TextStyle(fontSize: 25),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
