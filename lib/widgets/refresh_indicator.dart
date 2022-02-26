import 'package:flutter/material.dart';

class Refresh extends StatefulWidget {
  const Refresh({Key? key}) : super(key: key);

  @override
  _RefreshState createState() => _RefreshState();
}

class _RefreshState extends State<Refresh> {
  GlobalKey<ScaffoldState>? scaffoldKey;
  List<String> demodata = [];
  @override
  void initState() {
    demodata = [
      "Flutter",
      "React Native",
      "Cordova/PhoneGap",
      "Native Script",
    ];
    scaffoldKey = GlobalKey();
    super.initState();
  }

  @override
  void dispose() {
    scaffoldKey!.currentState!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Refresh Indicator'),
      ),
      body: RefreshIndicator(
        child: ListView.builder(
          itemCount: demodata.length,
          physics: AlwaysScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                title: Text(demodata[index]),
              ),
            );
          },
        ),
        onRefresh: () {
          return Future.delayed(
            Duration(seconds: 1),
            () {
              setState(() {
                demodata.addAll(
                  ["Ionic", "Xamarin"],
                );
              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    "Page Refreshed",
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
