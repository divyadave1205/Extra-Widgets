import 'package:flutter/material.dart';

class Transforms extends StatefulWidget {
  const Transforms({Key? key}) : super(key: key);

  @override
  _TransformsState createState() => _TransformsState();
}

class _TransformsState extends State<Transforms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(

          color: Colors.black,
          child: Transform(
            transform: Matrix4.skewY(0.5),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: const Color(0xFFE8581C),
              child: const Text('Apartment for rent!'),
            ),
          ),
        ),
      ),
    );
  }
}
