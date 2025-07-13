import 'package:flutter/material.dart';

class BgShapeFlipped extends CustomClipper<Path> {
  final double borderRadius;
  final double topCurveOffset;

  BgShapeFlipped({this.borderRadius = 30.0, this.topCurveOffset = 25.0});

  @override
  Path getClip(Size size) {
    final path = Path();

    // ابدأ من أسفل يمين الشاشة
    path.moveTo(size.width, size.height);

    // اصعد إلى أعلى اليمين
    path.lineTo(size.width, borderRadius);

    // منحنى الزاوية العلوية اليمنى
    path.quadraticBezierTo(size.width, 0, size.width - borderRadius, 0);

    // خط مستقيم حتى قبل الزاوية اليسرى
    path.lineTo(borderRadius, topCurveOffset);

    // منحنى الزاوية العلوية اليسرى
    path.quadraticBezierTo(
      0,
      topCurveOffset + 5.0,
      0,
      borderRadius + 40.0,
    );

    // نزول حتى نقطة الانحناء السفلي
    path.quadraticBezierTo(
      0,
      size.height,
      0,
      size.height,
    );

    // النزول لأسفل يسار الشاشة
    path.lineTo(size.width, size.height);

    // إغلاق الشكل
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    if (oldClipper is BgShapeFlipped) {
      return oldClipper.borderRadius != borderRadius ||
          oldClipper.topCurveOffset != topCurveOffset;
    }
    return false;
  }
}
