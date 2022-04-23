import 'package:flutter/material.dart';
import 'package:jokko_marche/screens/components/bottomBar.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'components/itemCard.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int test = 1;
  Widget? iconFabChanged;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          extendBody: true,
          // appBar: AppBar(
          //   // leading: IconButton(
          //   //   onPressed: () {},
          //   //   icon: const Icon(Icons.menu),
          //   //   iconSize: 45,
          //   // ),
          //   title: const Center(child: Text('Jokko Marche')),
          //   actions: [
          //     IconButton(
          //       onPressed: () {},
          //       icon: const Icon(Icons.account_circle),
          //       iconSize: 45,
          //     ),
          //   ],
          // ),
          bottomNavigationBar: const BottonBar(),
          // drawer: Drawer(
          //   backgroundColor: Colors.grey.shade300,
          //   child: Padding(
          //         padding: const EdgeInsets.only(top: 38.0),
          //         child: ListView(
          //           children: [
          //             UserAccountsDrawerHeader(
          //               accountName: const Text('Textemail@gmail.com'),
          //               currentAccountPicture: GestureDetector(
          //                 child:const CircleAvatar(
          //                   radius: 60.0,
          //                   backgroundColor: Colors.white,
          //                   backgroundImage: AssetImage(
          //                           'assets/images/home.png'),
          //                 ),
          //               ),
          //               decoration:const BoxDecoration(color: Colors.redAccent),
          //               accountEmail: null,
          //             ),
          //             const ListTile(
          //               leading: Icon(
          //                 Icons.search_rounded,
          //                 color: Colors.grey,
          //                 size: 35.0,
          //               ),
          //               title: Text(
          //                 'Recherche',
          //                 style:
          //                     TextStyle(fontSize: 25.0, color: Colors.black87),
          //               ),
          //             )

          //           ],
          //         ),
          //   ),
          //   ),
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                pinned: false,
                expandedHeight: 300,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    children: [
                      CarouselSlider(
                        options: CarouselOptions(
                          autoPlay: true,
                          viewportFraction: 0.8,
                          enlargeCenterPage: true,
                          height: 500,
                        ),
                        items: imgList
                            .map(
                              (item) => Container(
                                margin: const EdgeInsets.only(top: 5.0),
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5.0)),
                                  child: Stack(
                                    children: <Widget>[
                                      Image.network(item,
                                          fit: BoxFit.cover, width: 1000.0),
                                      Center(
                                        // Positioned(
                                        // bottom: 0.0,
                                        // left: 0.0,
                                        // right: 0.0,
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color.fromARGB(200, 0, 0, 0),
                                                Color.fromARGB(0, 0, 0, 0)
                                              ],
                                              begin: Alignment.bottomCenter,
                                              end: Alignment.topCenter,
                                            ),
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10.0, horizontal: 20.0),
                                          child: Text(
                                            'No. ${imgList.indexOf(item)} image',
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                      Center(
                        child: Container(
                          margin: const EdgeInsets.only(top: 180.0),
                          height: 150,
                          width: 400,
                          decoration: const BoxDecoration(
                              color: Colors.black45,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Searsch',
                                  icon: Icon(Icons.search),
                                ),
                              ),
                              const Text('data')
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return const ItemCard();
                  },
                  childCount: 15,
                ),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 250,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 2,
                ),
              ),
              // Text('data'),
            ],
          )),
    );
  }
}
