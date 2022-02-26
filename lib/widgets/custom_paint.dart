import 'package:flutter/material.dart';

class CustomPainters extends StatefulWidget {
  const CustomPainters({Key? key}) : super(key: key);

  @override
  _CustomPaintersState createState() => _CustomPaintersState();
}

class _CustomPaintersState extends State<CustomPainters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      body: Center(
        child: CustomPaint(
          painter: Square(),
          child: Container(),
        ),
      ),
    );
  }
}

class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.pink.withOpacity(0.4)
      ..strokeWidth = 15;

    var path = Path();
    path.moveTo(0, size.height * 0.7);
    path.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.7,
      size.width * 0.5,
      size.height * 0.8,
    );
    path.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.9,
      size.width * 1,
      size.height * 0.8,
    );
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.pink
      ..strokeWidth = 20
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    Paint paint1 = Paint()
      ..color = Colors.pink[200]!
      ..strokeWidth = 0
      ..style = PaintingStyle.fill;
    double width = size.width;
    double height = size.height;
    Path path = Path()
      ..moveTo(
        0.5 * width,
        height * 0.35,
      )
      ..cubicTo(
        0.2 * width,
        height * 0.1,
        -0.25 * width,
        height * 0.6,
        0.5 * width,
        height,
      )
      ..moveTo(0.5 * width, height * 0.35)
      ..cubicTo(0.8 * width, height * 0.1, 1.25 * width, height * 0.6,
          0.5 * width, height);
    canvas.drawPath(path, paint);
    canvas.drawPath(path, paint1);
  }

  @override
  bool shouldRepaint(TrianglePainter oldDelegate) {
    return true;
  }
}

class Wave extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.pinkAccent
      ..strokeWidth = 20;

    double width = size.width;
    double height = size.height;
    Path path = Path();
    path.moveTo(0, height * 0.6);
    path.quadraticBezierTo(
      width * 0.2,
      height * 0.2,
      width * 0.5,
      height * 0.6,
    );

    path.quadraticBezierTo(
      width * 0.8,
      height,
      width,
      height * 0.6,
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(Wave oldDelegate) {
    return true;
  }
}

class Flower extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.cyanAccent[400]!
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    double width = size.width;
    double height = size.height;
    Path path = Path();
    path.moveTo(width / 2, 0);
    path.quadraticBezierTo(width * 0.7, height * 0.4, width / 2, height * 0.5);
    path.moveTo(width * 0.5, 0);

    path.quadraticBezierTo(width * 0.3, height * 0.4, width / 2, height * 0.5);
    path.moveTo(width * 0.5, height / 2);
    path.quadraticBezierTo(width * 0.3, height * 0.4, 0, height * 0.5);
    path.quadraticBezierTo(width * 0.3, height * 0.6, width / 2, height * 0.5);
    path.quadraticBezierTo(width * 0.7, height * 0.6, width, height * 0.5);
    path.quadraticBezierTo(width * 0.7, height * 0.4, width / 2, height * 0.5);
    path.quadraticBezierTo(width * 0.7, height * 0.6, width / 2, height);
    path.quadraticBezierTo(width * 0.3, height * 0.6, width / 2, height / 2);
    path.moveTo(width / 2, 0);
    path.lineTo(0, height * 0.5);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(Flower oldDelegate) {
    return true;
  }
}

class Square extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.pinkAccent[400]!
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    double width = size.width;
    double height = size.height;
    Path path = Path();
    path.moveTo(width, height * 0.3);
    path.quadraticBezierTo(
        width * 0.9, height * 0.4, width * 0.8, height * 0.3);
    path.moveTo(width * 0.8, height * 0.3);
    path.quadraticBezierTo(
        width * 0.7, height * 0.4, width * 0.6, height * 0.3);
    path.moveTo(width * 0.6, height * 0.3);
    path.quadraticBezierTo(
        width * 0.5, height * 0.4, width * 0.4, height * 0.3);
    path.moveTo(width * 0.4, height * 0.3);
    path.quadraticBezierTo(
        width * 0.3, height * 0.4, width * 0.2, height * 0.3);
    path.moveTo(width * 0.2, height * 0.3);
    path.quadraticBezierTo(width * 0.1, height * 0.4, 0, height * 0.3);
    path.moveTo(0, height * 0.3);
    path.quadraticBezierTo(width * 0.14, height * 0.37, 0, height * 0.42);
    path.moveTo(0, height * 0.42);
    path.quadraticBezierTo(width * 0.14, height * 0.47, 0, height * 0.54);
    path.moveTo(0, height * 0.54);
    path.quadraticBezierTo(width * 0.14, height * 0.59, 0, height * 0.66);
    path.moveTo(0, height * 0.66);
    path.quadraticBezierTo(width * 0.14, height * 0.72, 0, height * 0.78);
    path.moveTo(0, height * 0.78);
    path.quadraticBezierTo(width * 0.14, height * 0.84, 0, height * 0.90);
    path.moveTo(0, height * 0.90);
    path.quadraticBezierTo(
        width * 0.1, height * 0.79, width * 0.2, height * 0.90);
    path.moveTo(width * 0.2, height * 0.90);
    path.quadraticBezierTo(
        width * 0.3, height * 0.79, width * 0.4, height * 0.90);
    path.moveTo(width * 0.4, height * 0.90);
    path.quadraticBezierTo(
        width * 0.5, height * 0.79, width * 0.6, height * 0.90);
    path.moveTo(width * 0.6, height * 0.90);
    path.quadraticBezierTo(
        width * 0.7, height * 0.79, width * 0.8, height * 0.90);
    path.moveTo(width * 0.8, height * 0.90);
    path.quadraticBezierTo(width * 0.9, height * 0.79, width, height * 0.90);
    path.moveTo(width, height * 0.90);
    path.quadraticBezierTo(width * 0.84, height * 0.84, width, height * 0.78);
    path.moveTo(width, height * 0.78);
    path.quadraticBezierTo(width * 0.84, height * 0.72, width, height * 0.66);
    path.moveTo(width, height * 0.66);
    path.quadraticBezierTo(width * 0.84, height * 0.59, width, height * 0.54);
    path.moveTo(width, height * 0.54);
    path.quadraticBezierTo(width * 0.84, height * 0.47, width, height * 0.42);
    path.moveTo(width, height * 0.42);
    path.quadraticBezierTo(width * 0.84, height * 0.37, width, height * 0.3);
    canvas.drawPath(path, paint);
    path.moveTo(width / 2, height / 2);
    Offset q = Offset(width * 0.5, height * 0.6);
    canvas.drawCircle(q, 60, paint);
  }

  @override
  bool shouldRepaint(Square oldDelegate) {
    return true;
  }
}
