import 'package:flutter/material.dart';

class Reorder extends StatefulWidget {
  const Reorder({Key? key}) : super(key: key);

  @override
  _ReorderState createState() => _ReorderState();
}

class _ReorderState extends State<Reorder> {
  final List<int> items = List<int>.generate(50, (index) => index);
  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);
    return Scaffold(
      body: ReorderableListView(
        padding: EdgeInsets.symmetric(
          horizontal: 40,
        ),
        children: [
          for (int index = 0; index < items.length; index++)
            ListTile(
              key: Key('$index'),
              tileColor: items[index].isOdd ? oddItemColor : evenItemColor,
              title: Text('Item ${items[index]}'),
            ),
        ],
        onReorder: (int oldIndex, int newIndex) {
          if (oldIndex < newIndex) {
            newIndex -= 1;
          }
          final int item = items.removeAt(oldIndex);
          items.insert(newIndex, item);
        },
      ),
    );
  }
}
