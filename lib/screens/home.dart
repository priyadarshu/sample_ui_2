import 'package:flutter/material.dart';
import 'package:sample_ui_2/screens/about.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  var messageText = TextEditingController();
  String showMessage = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextField(
            controller: messageText,
          ),
          RaisedButton(
            onPressed: () {
              setState(() {
                showMessage = messageText.text;
              });
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return About(showMessage);
                }),
              );
            },
            child: Text('Go to about us page'),
          ),
        ],
      ),
    );
  }
}
