import 'package:flutter/material.dart';

class Bg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              // image: AssetImage('images/pexels-photo-2603464.jpeg'),
              image: AssetImage('images/girl-people-landscape-sun-38554.jpeg'),
              fit: BoxFit.cover)),
      child: Center(
        child: Text('ok1'),
      ),
    ));
  }
}
