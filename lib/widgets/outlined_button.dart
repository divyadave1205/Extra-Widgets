import 'package:flutter/material.dart';

class OutlineButtons extends StatefulWidget {
  const OutlineButtons({Key? key}) : super(key: key);

  @override
  _OutlineButtonsState createState() => _OutlineButtonsState();
}

class _OutlineButtonsState extends State<OutlineButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
          style: ButtonStyle(),
          child: Container(
            margin: EdgeInsets.all(10),
            height: 200,
            width: 100,
            color: Colors.pink,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
