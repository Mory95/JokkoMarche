import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  final int? counter;
  final IconData? iconData;
  final String? title;
  // final Function? onPressed;
  const ItemTile(
      {Key? key, this.counter, this.iconData, this.title})//, this.onPressed
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(counter);
        // onPressed!;
      },
      child: Card(
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
                child: Center(child: Text('$counter')),
              ),
            ),
            Center(
                child: Icon(
              iconData,
              size: 100,
            )),
            Positioned(
                left: 10,
                bottom: 15,
                child: Text(
                  title!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )),
          ],
        ),
      ),
    );
  }
}
