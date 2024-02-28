import 'package:flutter/material.dart';
import '../widgets/cat.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  Animation<double> catAnimation;
  AnimationController catController;

  @override
  initState() {
    super.initState();


  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation!'),
      ),
      body: buildAnimation(),
    );
  }

  Widget buildAnimation() {
    return Cat();
  }
}
