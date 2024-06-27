import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobilelayout,
      required this.tabletLayout,
      required this.desktopLayout});
  final Widget mobilelayout;
  final Widget tabletLayout;
  final Widget desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600 || constraints.maxHeight < 600) {
          return mobilelayout;
        } else if (constraints.maxWidth < 1100) {
          return tabletLayout;
        } else {
          return desktopLayout;
        }
      },
    );
  }
}
