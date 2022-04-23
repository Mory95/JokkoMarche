import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);
  Widget chatList() {
    return Card(
      child: GestureDetector(
        onTap: ()=> print('taped'),
        child:const ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            child: Text(
              'A',
              style: TextStyle(fontSize: 25),
            ),
          ),
          title: Text('Mory'),
          subtitle: Text('Commande bien recu'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:const Text('Mes discutions'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.message),
            ),
          ],
        ),
        body: Container(
          margin: const EdgeInsets.all(10.0),
          child: ListView.builder(
          // child: ListView.separated(
            // separatorBuilder: (BuildContext context, int index) =>
            //     const Divider(
            //   height: 10.0,
            //   color: Colors.black,
            // ),
            itemCount: 55,
            itemBuilder: (BuildContext context, int index) => Container(
              child: chatList(),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              print('Add chat');
            },
            tooltip: 'Add chat',
            child: const Icon(Icons.add)),
      ),
    );
  }
}
