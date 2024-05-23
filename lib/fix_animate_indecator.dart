import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pageview_inkwell_contoller/main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FixAnimateIssue extends StatelessWidget {
  const FixAnimateIssue({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 500,
              child: PageView(
                controller: controller,
                // scrollDirection: Axis.vertical,
                // physics: NeverScrollableScrollPhysics(),
                children: [
                  HomePage(
                    index: 0,
                    title: 'Write Lists',
                    subtitle:
                        'Labore minim esse fugiat ad magna ea\n nulla anim consequat esse do aute ex.',
                  ),
                  HomePage(
                    index: 1,
                    subtitle:
                        'Exercitation veniam dolor sit in nostrud amet sunt dolor qui proident.',
                    title: 'Stay Orangized',
                  ),
                  HomePage(
                      subtitle:
                          'Sint enim magna nisi pariatur irure laborum cillum velit in nulla laboris excepteur.',
                      title: 'Check Progress',
                      index: 2)
                ],
              ),
            ),
            SmoothPageIndicator(
              controller: controller, // PageController
              count: 3,
              effect: WormEffect(activeDotColor: Color(0xFF8BA8B5)),
            ), // your preferred effec
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  controller.nextPage(
                      duration: Duration(seconds: 3), curve: Curves.easeInBack);
                },
                child: Container(
                  width: 317,
                  height: 54,
                  decoration: BoxDecoration(
                      color: Color(0xFF8BA8B5),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      "Next",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
