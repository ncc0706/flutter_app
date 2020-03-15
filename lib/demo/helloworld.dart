import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
      ),
      body: Container(
        color: Colors.pink[200],
        child: Center(
          child: Text(
            'Hello World',
            style: TextStyle(fontSize: 16, color: Colors.amber[300]),
          ),
        ),
      ),
    );
  }
}
