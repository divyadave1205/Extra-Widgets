import 'package:flutter/material.dart';
import 'dart:ui';

class BackFilter extends StatefulWidget {
  const BackFilter({Key? key}) : super(key: key);

  @override
  _BackFilterState createState() => _BackFilterState();
}

class _BackFilterState extends State<BackFilter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Text("0" * 10000),
          Center(
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 5,
                  sigmaY: 5,
                ),
                child: Container(
                  alignment: Alignment.center,
                  width: 200.0,
                  height: 200.0,
                  child: const Text('Hello World'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
