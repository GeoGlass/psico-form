import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget extraLargeScreen;
  final Widget? largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  const ResponsiveWidget({
    super.key,
    required this.extraLargeScreen,
    this.largeScreen,
    this.mediumScreen,
    this.smallScreen,
  });

  static const double extraLargeWidth = 1373.0;
  static const double largeWidth = 768.0;
  static const double mediumWidth = 576.0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > extraLargeWidth) {
          return extraLargeScreen;
        } else if (constraints.maxWidth <= extraLargeWidth && constraints.maxWidth >= largeWidth) {
          return largeScreen ?? extraLargeScreen;
        } else if (constraints.maxWidth <= largeWidth && constraints.maxWidth >= mediumWidth) {
          return mediumScreen ?? largeScreen ?? extraLargeScreen;
        } else {
          return smallScreen ?? mediumScreen ?? largeScreen ?? extraLargeScreen;
        }
      },
    );
  }
}
