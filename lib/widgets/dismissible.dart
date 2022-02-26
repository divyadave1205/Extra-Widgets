import 'package:flutter/material.dart';

class Dissmiss extends StatefulWidget {
  const Dissmiss({Key? key}) : super(key: key);

  @override
  _DissmissState createState() => _DissmissState();
}

class _DissmissState extends State<Dissmiss> {
  final List<int> items = List<int>.generate(100, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(itemBuilder: (BuildContext context, int index) {
      return Dismissible(
        key: ValueKey<int>(items[index]),
        child: ListTile(
          title: Text(
            'Item ${items[index]}',
          ),
        ),
        background: Container(
          color: Colors.green,
        ),
        onDismissed: (DismissDirection direction) {
          setState(() {
            items.removeAt(index);
          });
        },
      );
    }));
  }
}
