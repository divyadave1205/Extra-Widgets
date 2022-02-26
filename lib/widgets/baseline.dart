import 'package:flutter/material.dart';

class Baselines extends StatefulWidget {
  const Baselines({Key? key}) : super(key: key);

  @override
  _BaselinesState createState() => _BaselinesState();
}

class _BaselinesState extends State<Baselines> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.blue,
          child: Column(
            children: [
              Baseline(
                baseline: 100,
                baselineType: TextBaseline.ideographic,
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.pink,
                ),
              ),
              Baseline(
                baseline: 100,
                baselineType: TextBaseline.alphabetic,
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.pink,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
