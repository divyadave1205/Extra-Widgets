import 'package:flutter/material.dart';

class CustomView extends StatefulWidget {
  const CustomView({Key? key}) : super(key: key);

  @override
  _CustomViewState createState() => _CustomViewState();
}

class _CustomViewState extends State<CustomView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.teal,
            pinned: false,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Animated Appbar",
              ),
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text("Grid Item $index"),
                );
              },
              childCount: 20,
            ),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
          ),
          SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text("List Item $index"),
                );
              },
              childCount: 20,
            ),
            itemExtent: 50,
          ),
        ],
      ),
    );
  }
}
