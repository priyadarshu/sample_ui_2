import 'package:flutter/material.dart';

class About extends StatelessWidget {
  final String title;
  About(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
      ),
      body: Center(
        child: Container(
          child: Text(
            this.title,
          ),
        ),
      ),
    );
  }
}
