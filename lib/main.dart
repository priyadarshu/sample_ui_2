import 'package:flutter/material.dart';
import 'package:sample_ui_2/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Sample UI 2",
      theme: ThemeData(
        primaryColor: Colors.blueGrey[300],
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('ShopZone'),
          centerTitle: true,
          actions: [
            Icon(Icons.search),
            Icon(Icons.shopping_cart),
          ],
        ),
        drawer: Drawer(),
        body: MyHome(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}
