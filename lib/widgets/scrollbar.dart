import 'package:flutter/material.dart';

class ScrollingBar extends StatefulWidget {
  const ScrollingBar({Key? key}) : super(key: key);

  @override
  _ScrollingBarState createState() => _ScrollingBarState();
}

class _ScrollingBarState extends State<ScrollingBar> {
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: ThemeData(
          scrollbarTheme: ScrollbarThemeData(
              thumbColor:
                  MaterialStateColor.resolveWith((states) => Colors.red)),
        ),
        child: Scrollbar(
            thickness: 10,
            isAlwaysShown: true,
            child: SingleChildScrollView(
              child:
                  Column(children: List.generate(50, (index) => Text("asd"))),
            )),
      ),
    );
  }
}
