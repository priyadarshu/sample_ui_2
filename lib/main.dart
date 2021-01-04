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
          child: Icon(
            Icons.add,
            color: Colors.white70,
          ),
          backgroundColor: Colors.blueGrey[700],
          onPressed: () {},
        ),
        /*bottomNavigationBar: Row(
          children: [
            Expanded(
              child: Icon(Icons.home),
            ),
            Expanded(
              child: Icon(Icons.person),
            ),
          ],*/
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.grey[700]),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.grey[700]),
              label: 'Profile',
            ),
          ],
          selectedLabelStyle: TextStyle(
            // color: Colors.red,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: TextStyle(
            // color: Colors.red,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.red,
        ),
      ),
    );
  }
}
