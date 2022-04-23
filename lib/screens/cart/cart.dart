import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  int _count = 0;

  Widget cartList() {
    return ListTile(
      leading: Container(
        height: 80,
        width: 80,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Colors.red,
        ),
        child: const Text('M'),
      ),
      title: Text("title"),
      subtitle: Text('subtitle'),
      trailing: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _count++;
                  });
                },
                child: Icon(Icons.arrow_drop_up_outlined),
              ),
              Text("${_count}"),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _count--;
                  });
                },
                child: Icon(Icons.arrow_drop_down_sharp),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.delete),
            color: Colors.red,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Stack(
          children: [
            ListView.separated(
              itemCount: 5,
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                height: 15,
                color: Colors.black,
              ),
              itemBuilder: (BuildContext context, int index) => cartList(),
            ),
            Positioned(
              bottom: 50,
              left: MediaQuery.of(context).size.width / 4,
              child: const Text(
                'Total: 75 000 fcfa',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Positioned(
              bottom: 10,
              left: MediaQuery.of(context).size.width / 3,
              // right: MediaQuery.of(context).size.width/3,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // primary: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {},
                child: const Text('Passer à la caisse'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
