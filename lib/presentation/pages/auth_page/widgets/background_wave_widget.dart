import 'dart:math';

import 'package:currency_app/presentation/theme/color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class BackgroundWaveWidget extends StatelessWidget {
  const BackgroundWaveWidget({super.key, required this.height, required this.speed, this.offset = 0.0, required this.color, required this.opacity});

  final double height;
  final double speed;
  final double offset;
  final Color color;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: height,
        width: constraints.biggest.width,
        child: LoopAnimationBuilder(
          duration: Duration(milliseconds: (5000 / speed).round()),
          tween: Tween(begin: 0.0, end: 2 * pi),
          builder: (context, value, _) {
            return CustomPaint(
              foregroundPainter: CurvePainter(value + offset, color, opacity),
            );},
        ),
      );
    });

  }

}

class CurvePainter extends CustomPainter {
  final double value;
  final Color color;
  final double opacity;

  CurvePainter(this.value, this.color, this.opacity);

  @override
  void paint(Canvas canvas, Size size) {
    final white = Paint()..color = color.withOpacity(opacity);
    final path = Path();

    final y1 = sin(value);
    final y2 = sin(value + pi / 2);
    final y3 = sin(value + pi);

    final startPointY = size.height * (0.5 + 0.4 * y1);
    final controlPointY = size.height * (0.5 + 0.4 * y2);
    final endPointY = size.height * (0.5 + 0.4 * y3);

    path.moveTo(size.width * 0, startPointY);
    path.quadraticBezierTo(
        size.width * 0.5, controlPointY, size.width, endPointY);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, white);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}