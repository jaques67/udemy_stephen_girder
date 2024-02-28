import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation!'),
      ),
      body: buildAnimation(),
    );
  }

  Widget buildAnimation() {

  }
}
