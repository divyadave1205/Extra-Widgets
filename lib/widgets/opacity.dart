import 'package:flutter/material.dart';

class Opacities extends StatefulWidget {
  const Opacities({Key? key}) : super(key: key);

  @override
  _OpacitiesState createState() => _OpacitiesState();
}

class _OpacitiesState extends State<Opacities> {
  bool visible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          opacity: visible ? 1 : 0,
          duration: Duration(milliseconds: 500),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.green,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.flip),
        tooltip: "toggle opacity",
        onPressed: () {
          setState(() {
            visible = !visible;
          });
        },
      ),
    );
  }
}
