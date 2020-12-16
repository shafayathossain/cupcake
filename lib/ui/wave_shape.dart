import 'package:flutter/material.dart';

class UpWaveCustomPainter1 extends CustomPainter {
  Color color;
  int waveCount;
  double waveAmplitude;
  double shortenBy;
  double amplitude;

  UpWaveCustomPainter1(this.color,
      {this.shortenBy = 0.0, this.amplitude = 0.20});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_0 = Path();
    path_0.moveTo(0, size.height * (1.00 - (amplitude / 2.0) - shortenBy));
    path_0.quadraticBezierTo(
        size.width * 0.05,
        size.height * (1.00 - shortenBy),
        size.width * 0.10,
        size.height * (1.00 - shortenBy));
    path_0.quadraticBezierTo(
        size.width * 0.15,
        size.height * (1.00 - shortenBy),
        size.width * 0.20,
        size.height * (1.00 - (amplitude / 2.0) - shortenBy));
    path_0.quadraticBezierTo(
        size.width * 0.25,
        size.height * ((1 - amplitude) - shortenBy),
        size.width * 0.30,
        size.height * ((1 - amplitude) - shortenBy));
    path_0.quadraticBezierTo(
        size.width * 0.35,
        size.height * ((1 - amplitude) - shortenBy),
        size.width * 0.40,
        size.height * (1.00 - (amplitude / 2.0) - shortenBy));
    path_0.quadraticBezierTo(
        size.width * 0.45,
        size.height * (1.00 - shortenBy),
        size.width * 0.50,
        size.height * (1.00 - shortenBy));
    path_0.quadraticBezierTo(
        size.width * 0.55,
        size.height * (1.00 - shortenBy),
        size.width * 0.60,
        size.height * (1.00 - (amplitude / 2.0) - shortenBy));
    path_0.quadraticBezierTo(
        size.width * 0.65,
        size.height * ((1 - amplitude) - shortenBy),
        size.width * 0.70,
        size.height * ((1 - amplitude) - shortenBy));
    path_0.quadraticBezierTo(
        size.width * 0.75,
        size.height * ((1 - amplitude) - shortenBy),
        size.width * 0.80,
        size.height * (1.00 - (amplitude / 2.0) - shortenBy));
    path_0.quadraticBezierTo(
        size.width * 0.85,
        size.height * (1.00 - shortenBy),
        size.width * 0.90,
        size.height * (1.00 - shortenBy));
    path_0.quadraticBezierTo(
        size.width * 0.95,
        size.height * (1.00 - shortenBy),
        size.width * 1.00,
        size.height * (1.00 - (amplitude / 2.0) - shortenBy));
    path_0.lineTo(size.width, 0);
    path_0.lineTo(0, 0);
    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class UpWaveCustomPainter2 extends CustomPainter {
  Color color;
  int waveCount;
  double waveAmplitude;

  UpWaveCustomPainter2(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.90);
    path_0.quadraticBezierTo(size.width * 0.10, size.height * 1.00,
        size.width * 0.20, size.height * 1.00);
    path_0.quadraticBezierTo(size.width * 0.30, size.height * 1.00,
        size.width * 0.40, size.height * 0.90);
    path_0.quadraticBezierTo(size.width * 0.50, size.height * 0.80,
        size.width * 0.60, size.height * 0.80);
    path_0.quadraticBezierTo(size.width * 0.70, size.height * 0.80,
        size.width * 0.80, size.height * 0.90);
    path_0.quadraticBezierTo(size.width * 0.90, size.height * 1.00,
        size.width * 1.00, size.height * 1.00);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(0, 0);
    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
