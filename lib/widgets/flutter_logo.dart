import 'package:flutter/material.dart';

class LogoOfFlutter extends StatefulWidget {
  const LogoOfFlutter({Key? key}) : super(key: key);

  @override
  _LogoOfFlutterState createState() => _LogoOfFlutterState();
}

class _LogoOfFlutterState extends State<LogoOfFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlutterLogo(
          style: FlutterLogoStyle.stacked,
          textColor: Colors.amber,
          size: 100,
          curve: Curves.easeIn,
          duration: Duration(
            seconds: 1,
          ),
        ),
      ),
    );
  }
}
