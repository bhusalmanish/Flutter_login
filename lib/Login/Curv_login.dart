import 'package:flutter/material.dart';

class CurvLogin extends StatelessWidget {
  const CurvLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white, // Container background color
            ),
            child: CustomPaint(
              painter: TrianglePainter(),
            ),
          ),
        ),
      ),
    );
  }
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.blue // Rectangle color
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 0); // Top left corner
    path.lineTo(size.width, 0); // Top right corner
    path.lineTo(size.width, size.height); // Bottom right corner

    // Diagonal cut
    path.lineTo(200, size.height); // Cut towards bottom right
    path.lineTo(size.width / 2, size.height - 200); // Diagonal point
    // path.lineTo(size.width / 2 - 20, size.height); // Cut towards bottom left

    path.lineTo(0, size.height); // Bottom left corner
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
