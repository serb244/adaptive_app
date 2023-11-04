import 'package:flutter/material.dart';

extension Responsive on BuildContext {
  T responsive<T>(
    T defaultVal, {
    T? mobile,
    T? tablet,
    T? desktop,
    // T? xl,
  }) {
    final wd = MediaQuery.of(this).size.width;
    return
        // wd >= 1280
        //   ? (xl ?? desktop ?? tablet ?? mobile ?? defaultVal)
        //   :
        wd >= 1024
            ? (desktop ?? tablet ?? mobile ?? defaultVal)
            : wd >= 768
                ? (tablet ?? mobile ?? defaultVal)
                : wd >= 640
                    ? (mobile ?? defaultVal)
                    : defaultVal;
  }
}
