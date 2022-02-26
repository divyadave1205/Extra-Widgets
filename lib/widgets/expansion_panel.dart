import "package:flutter/material.dart";

class ExpPanel extends StatefulWidget {
  const ExpPanel({Key? key}) : super(key: key);

  @override
  _ExpPanelState createState() => _ExpPanelState();
}

class _ExpPanelState extends State<ExpPanel> {
  bool active = false;
  String exTitle = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: ExpansionPanelList(
              dividerColor: Colors.pink,
              animationDuration: Duration(
                milliseconds: 2000,
              ),
              expansionCallback: (panelIndex, isExpanded) {
                active = !active;

                setState(() {});
              },
              children: [
                ExpansionPanel(
                  canTapOnHeader: true,
                  isExpanded: active,
                  headerBuilder: (context, isExpanded) {
                    return ListTile(
                      title: Text(
                        "click To Expand",
                        style: TextStyle(color: Colors.black),
                      ),
                    );
                  },
                  body: ListTile(
                    title: Text(
                      "Description Text",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
