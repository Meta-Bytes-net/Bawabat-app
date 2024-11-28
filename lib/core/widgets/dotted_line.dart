import 'package:flutter/material.dart';

class DottedLine extends StatelessWidget {
  final double dashWidth;
  final double dashSpacing;
  final Color color;

  const DottedLine({
    super.key,
    this.dashWidth = 5.0,
    this.dashSpacing = 3.0,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DottedLinePainter(
        dashWidth: dashWidth,
        dashSpacing: dashSpacing,
        color: color,
      ),
    );
  }
}

class DottedLinePainter extends CustomPainter {
  final double dashWidth;
  final double dashSpacing;
  final Color color;

  DottedLinePainter({
    required this.dashWidth,
    required this.dashSpacing,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 2.0;

    double startX = 0;
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, 0),
        Offset(startX + dashWidth, 0),
        paint,
      );
      startX += dashWidth + dashSpacing;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
