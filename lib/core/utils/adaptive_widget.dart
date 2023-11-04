import 'package:flutter/material.dart';

class AdaptiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget? mobileLarge;
  final Widget? tablet;
  final Widget? desktop;

  const AdaptiveWidget({
    Key? key,
    required this.mobile,
    this.mobileLarge,
    this.tablet,
    this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) => MediaQuery.of(context).size.width <= 500;

  static bool isMobileLarge(BuildContext context) => MediaQuery.of(context).size.width <= 700;

  static bool isTablet(BuildContext context) => MediaQuery.of(context).size.width < 1024;

  static bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width >= 1024;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width >= 1024) {
      return desktop ?? tablet ?? mobileLarge ?? mobile;
    } else if (size.width >= 700) {
      return tablet ?? mobileLarge ?? mobile;
    } else if (size.width >= 500) {
      return mobileLarge ?? mobile;
    } else {
      return mobile;
    }
  }
}
