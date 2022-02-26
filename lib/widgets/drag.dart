import 'package:flutter/material.dart';

class Drag extends StatefulWidget {
  const Drag({Key? key}) : super(key: key);

  @override
  _DragState createState() => _DragState();
}

class _DragState extends State<Drag> {
  int acceptedData = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Draggable(
            data: 10,
            child: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.lightGreenAccent,
              child: const Center(
                child: Text('Draggable'),
              ),
            ),
            feedback: Container(
              color: Colors.deepOrange,
              height: 100,
              width: 100,
              child: const Icon(Icons.directions_run),
            ),
            childWhenDragging: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.pinkAccent,
              child: const Center(
                child: Text('Child When Dragging'),
              ),
            ),
          ),
          DragTarget(
            builder: (
              BuildContext context,
              List<dynamic> accepted,
              List<dynamic> rejected,
            ) {
              return Container(
                height: 100.0,
                width: 100.0,
                color: Colors.cyan,
                child: Center(
                  child: Text('Value is updated to: $acceptedData'),
                ),
              );
            },
            onAccept: (int data) {
              acceptedData += data;
            },
          ),
        ],
      ),
    );
  }
}
