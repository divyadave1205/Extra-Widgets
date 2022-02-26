import 'package:flutter/material.dart';

class DragScroll extends StatefulWidget {
  const DragScroll({Key? key}) : super(key: key);

  @override
  _DragScrollState createState() => _DragScrollState();
}

class _DragScrollState extends State<DragScroll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DraggableScrollableSheet(
        expand: true,
        initialChildSize: 0.5,
        minChildSize: 0.25,
        maxChildSize: 1,
        builder: (BuildContext context, controller) {
          return Container(
            color: Colors.green,
            child: ListView(
              controller: controller,
              children: [
                ListTile(
                  title: Text("Name"),
                ),
                ListTile(
                  title: Text("Name"),
                ),
                ListTile(
                  title: Text("Name"),
                ),
                ListTile(
                  title: Text("Name"),
                ),
                ListTile(
                  title: Text("Name"),
                ),
                ListTile(
                  title: Text("Name"),
                ),
                ListTile(
                  title: Text("Name"),
                ),
                ListTile(
                  title: Text("Name"),
                ),
                ListTile(
                  title: Text("Name"),
                ),
                ListTile(
                  title: Text("Name"),
                ),
                ListTile(
                  title: Text("Name"),
                ),
                ListTile(
                  title: Text("Name"),
                ),
                ListTile(
                  title: Text("Name"),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
