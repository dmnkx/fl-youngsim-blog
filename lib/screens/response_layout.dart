import 'package:fl_youngsim_blog/screens/dimensions.dart';
import 'package:flutter/material.dart';

class ResponseLayout extends StatelessWidget {
  const ResponseLayout({
    super.key,
    required this.mobileLayout,
    required this.desktopLayout,
  });
  final Widget mobileLayout;
  final Widget desktopLayout;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return size.width < mobileWidth ? mobileLayout : desktopLayout;
  }
}
