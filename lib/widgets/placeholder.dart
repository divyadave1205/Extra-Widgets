import 'package:flutter/material.dart';
class PlaceHolders extends StatefulWidget {
  const PlaceHolders({Key? key}) : super(key: key);

  @override
  _PlaceHoldersState createState() => _PlaceHoldersState();
}

class _PlaceHoldersState extends State<PlaceHolders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Placeholder(
          color: Colors.pink,
          fallbackHeight: 300,
          fallbackWidth: 50,
          strokeWidth: 5,
        ),
      ),
    );
  }
}