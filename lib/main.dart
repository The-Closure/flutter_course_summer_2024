import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/pages/home_page.dart';
import 'package:responsive_and_adaptive/pages/resposive_widgets_page.dart';
import 'package:responsive_and_adaptive/responsive/adaptive_layout.dart';
import 'package:responsive_and_adaptive/responsive/desktop_layout.dart';
import 'package:responsive_and_adaptive/responsive/mobile_layout.dart';
import 'package:responsive_and_adaptive/responsive/tablet_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AdaptiveLayout(
        mobilelayout: MobileLayout(),
        tabletLayout: TabletLayout(),
        desktopLayout: DesktopLayout(),
      ),
    );
  }
}
