import 'package:flutter/material.dart';

class Ignore extends StatefulWidget {
  const Ignore({Key? key}) : super(key: key);

  @override
  _IgnoreState createState() => _IgnoreState();
}

class _IgnoreState extends State<Ignore> {
  int counter = 0;
  void increamentCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You have pushed the button this many times:"),
            Text(
              "$counter",
              style: Theme.of(context).textTheme.headline4,
            ),
            IgnorePointer(
              ignoring: true,
              child: ElevatedButton(
                onPressed: increamentCounter,
                child: Text("yes"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
