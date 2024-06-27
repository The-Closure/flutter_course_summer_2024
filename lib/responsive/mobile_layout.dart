import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/responsive/lanscape_layout.dart';
import 'package:responsive_and_adaptive/responsive/portarait_layout.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return const PortraitLayout();
        } else {
          return const LandscapeLayout();
        }
      },
    );
  }
}
