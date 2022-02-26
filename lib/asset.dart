import 'package:flutter/material.dart';

class Asset extends StatelessWidget {
  const Asset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        image: AssetImage("assets/untitled1.png"),
      ),
    );
  }
}
