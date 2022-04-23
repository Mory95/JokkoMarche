// ignore_for_file: file_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  bool show = true;

  Widget details() {
    return Container(
      margin: const EdgeInsets.all(25),
      child: show
          ? const Text(
              "C'est une petite description, qui permet d'avoir plus d'information sur le produit que vous avez devant le yeux.")
          : Column(
              children: [
                Row(
                  children: const [
                    Icon(Icons.person),
                    Text('Papa Djibi sene'),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.person_pin_circle),
                    Text('Thiaroye sur mer'),
                  ],
                ),
              ],
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      // bottomNavigationBar: const BottonBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.blueGrey,
              child: Center(
                child: SizedBox(
                  height: 300,
                  width: 300,
                  child: Hero(
                    tag: 'tof',
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Column(
                            children: [
                              Expanded(
                                child: CarouselSlider(
                                  carouselController: _controller,
                                  options: CarouselOptions(
                                      viewportFraction: 1.0,
                                      onPageChanged: (index, reason) {
                                        setState(() {
                                          _current = index;
                                        });
                                      }),
                                  items: imgList
                                      .map(
                                        (item) => SizedBox(
                                          width: 300,
                                          child: Image.network(item,
                                              fit: BoxFit.cover, width: 1000.0),
                                        ),
                                      )
                                      .toList(),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: imgList.asMap().entries.map((entry) {
                                  return GestureDetector(
                                    onTap: () =>
                                        _controller.animateToPage(entry.key),
                                    child: Container(
                                      width: 12.0,
                                      height: 12.0,
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8.0, horizontal: 4.0),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: (Theme.of(context)
                                                          .brightness ==
                                                      Brightness.dark
                                                  ? Colors.white
                                                  : Colors.black)
                                              .withOpacity(_current == entry.key
                                                  ? 0.9
                                                  : 0.4)),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.grey[200],
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              child: Row(
                children: [
                  const Text('Ensemble'),
                  Expanded(child: Container()),
                  const Text('2500 fcfa'),
                ],
              ),
            ),
            Container(
              color: Colors.grey[350],
              padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 2),
              child: Row(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    onPressed: () {
                      setState(() {
                        show = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: show
                            ? const Border(
                                bottom: BorderSide(
                                  color: Colors.black,
                                ),
                              )
                            : const Border(bottom: BorderSide.none),
                      ),
                      child: const Text('Description'),
                    ),
                  ),
                  Expanded(child: Container()),
                  ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    onPressed: () {
                      setState(() {
                        show = false;
                      });
                    },
                    child: Container(
                      // margin: EdgeInsets.only(right: 11),
                      decoration: BoxDecoration(
                        border: !show
                            ? const Border(
                                bottom: BorderSide(
                                  color: Colors.black,
                                ),
                              )
                            : const Border(bottom: BorderSide.none),
                      ),
                      child: const Text('Vendeur'),
                    ),
                  ),
                ],
              ),
            ),
            details(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // primary: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {},
              child: const Text('Ajouter au panier'),
            ),
          ],
        ),
      ),
    );
  }
}
