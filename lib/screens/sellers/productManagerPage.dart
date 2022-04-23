import 'package:flutter/material.dart';

class ProductManager extends StatefulWidget {
  const ProductManager({Key? key}) : super(key: key);

  @override
  State<ProductManager> createState() => _ProductManagerState();
}

class _ProductManagerState extends State<ProductManager> {
  Widget listProd() {
    return Card(
      child: GestureDetector(
        onTap: () => print('taped'),
        child: ListTile(
          leading: Container(
            margin:const EdgeInsets.symmetric(vertical: 10),
            color: Colors.amberAccent,
            height: 300,
            width: 100,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Gérer mes articles'),
        ),
        body: Container(
          margin: const EdgeInsets.all(10.0),
          child: ListView.builder(
            itemCount: 55,
            itemBuilder: (BuildContext context, int index) => Container(
              child: listProd(),
            ),
          ),
        ),
      ),
    );
  }
}
