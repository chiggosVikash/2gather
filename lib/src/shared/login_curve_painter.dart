import '/src/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class LoginCurvePainter extends CustomPainter {
  final BuildContext context;
  LoginCurvePainter({required this.context});
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = context.colorScheme.primary
      ..style = PaintingStyle.fill;

    final path = Path();
    path.lineTo(0, size.height);
    path.cubicTo(size.width * .2, size.height * .55, size.width * .8,
        size.height * .95, size.width, size.height * .6);
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
