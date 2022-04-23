import 'package:flutter/material.dart';
import 'package:jokko_marche/screens/sellers/components/itemTile.dart';
import 'package:jokko_marche/screens/sellers/components/stockManager.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Widget itemTile(int nbr, IconData icon, String title) {
    //, Function onPress
    return Card(
      // color: Colors.amberAccent,
      child: Stack(
        children: [
          Positioned(
            top: -5,
            right: -5,
            child: Container(
              height: 30,
              width: 50,
              decoration: const BoxDecoration(
                  color: Colors.red,
                  // shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Center(child: Text('$nbr')),
            ),
          ),
          Center(
              child: Icon(
            icon,
            size: 100,
          )),
          Positioned(
              left: 10,
              bottom: 15,
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Tableau de bord'),
          ),
          body: Container(
            margin: const EdgeInsets.all(10),
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              children: [
                // itemTile(1,Icons.store_outlined,'Gérer mon stock',),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StockManager(),),
                    );
                    // print('test');
                  },
                  child: itemTile(
                    1,
                    Icons.store_outlined,
                    'Gérer mon stock',
                  ),
                ),
                // itemTile(2,Icons.shopping_bag_outlined,'Gérér mes commandes'),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Dashboard(),),
                    );
                    // print('test');
                  },
                  child: itemTile(2,Icons.shopping_bag_outlined,'Gérér mes commandes'),
                ),
                // itemTile(3,Icons.favorite_border,'Gérer mes abonnés'),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Dashboard(),),
                    );
                    // print('test');
                  },
                  child: itemTile(3,Icons.favorite_border,'Gérer mes abonnés'),
                ),
                // itemTile(4,Icons.calculate_outlined,'Gérer ma boutique'),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Dashboard(),),
                    );
                    // print('test');
                  },
                  child: itemTile(4,Icons.calculate_outlined,'Gérer ma boutique'),
                ),
                // itemTile(5,Icons.production_quantity_limits,'Gérer mes produits'),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Dashboard(),),
                    );
                    // print('test');
                  },
                  child: itemTile(5,Icons.production_quantity_limits,'Gérer mes produits'),
                ),
                // itemTile(6,Icons.car_repair_outlined,'Gérer les livraisons'),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Dashboard(),),
                    );
                    // print('test');
                  },
                  child: itemTile(6,Icons.car_repair_outlined,'Gérer les livraisons'),
                ),
                // itemTile(7,Icons.calculate_outlined,'Inventaire'),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Dashboard(),),
                    );
                    // print('test');
                  },
                  child: itemTile(7,Icons.calculate_outlined,'Inventaire'),
                ),
                // itemTile(8),
              ],
            ),
            // child: GridView.builder(
            //   itemCount: 8,
            //   itemBuilder: (context, index) => itemTile(index),
            //   gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 2,
            //   ),
            // ),
          )),
    );
  }
}
