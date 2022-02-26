import 'package:extra_widgets/widgets/custom_paint.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomPainters(),
      debugShowCheckedModeBanner: false,
    );
  }
}
