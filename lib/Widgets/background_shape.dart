import 'package:flutter/material.dart';

class BackgroundShape extends CustomClipper<Path> {
  final double borderRadius;
  final double topCurveOffset;

  BackgroundShape({this.borderRadius = 30.0, this.topCurveOffset = 25.0});

  @override
  Path getClip(Size size) {
    final path = Path();

    // ابدأ من أسفل يسار الشاشة
    path.moveTo(0, size.height);

    // اصعد إلى أعلى اليسار
    path.lineTo(0, borderRadius);

    // منحنى الزاوية العلوية اليسرى
    path.quadraticBezierTo(0, 0, borderRadius, 0);

    // خط مستقيم حتى قبل الزاوية اليمنى
    path.lineTo(size.width - borderRadius, topCurveOffset);

    // منحنى الزاوية العلوية اليمنى
    path.quadraticBezierTo(
      size.width,
      topCurveOffset + 5.0,
      size.width,
      borderRadius + 40.0,
    );
    // نزول حتى نقطة الانحناء السفلي
    path.quadraticBezierTo(
      size.width,
      size.height, // نقطة التحكم (سفلية جداً)
      size.width - borderRadius,
      size.height - topCurveOffset, // نهاية المنحنى
    );

    // النزول لأسفل يمين الشاشة
    path.lineTo(size.width, size.height);

    // إغلاق الشكل
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    if (oldClipper is BackgroundShape) {
      return oldClipper.borderRadius != borderRadius ||
          oldClipper.topCurveOffset != topCurveOffset;
    }
    return false;
  }
}
