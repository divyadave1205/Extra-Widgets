import 'package:flutter/material.dart';

class InterActive extends StatefulWidget {
  const InterActive({Key? key}) : super(key: key);

  @override
  _InterActiveState createState() => _InterActiveState();
}

class _InterActiveState extends State<InterActive> {
  final transformationController = TransformationController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InteractiveViewer(
        child: Container(
          color: Colors.teal,
          height: 300,
          width: 300,
        ),
        transformationController: transformationController,
        boundaryMargin: EdgeInsets.all(20),
        minScale: 0.1,
        maxScale: 5,
        onInteractionStart: (_) => print("Interaction Started"),
        onInteractionEnd: (details) {
          setState(() {
            transformationController.toScene(Offset.zero);
          });
        },
        onInteractionUpdate: (_) => print("Interaction Updated"),
      ),
    );
  }
}
