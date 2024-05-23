// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(MyApp());
}

PageController controller = PageController();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: PageView(
      controller: controller,
      children: [
        HomePage(
            subtitle:
                'Consectetur magna ad incididunt dolor qui exercitation elit occaecat ullamco.',
            title: 'Write Lists',
            index: 0),
        HomePage(
            subtitle:
                'Consectetur magna ad incididunt dolor qui exercitation elit occaecat ullamco.',
            title: 'Stay Orgenaised',
            index: 1),
        HomePage(
            subtitle:
                'Consectetur magna ad incididunt dolor qui exercitation elit occaecat ullamco.',
            title: 'Check Progress',
            index: 2),
      ],
    ));
  }
}

class HomePage extends StatelessWidget {
  HomePage({required this.subtitle, required this.title, required this.index});

  final String title;
  final String subtitle;
  final int index;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                    onTap: () {
                      controller.jumpToPage(2);
                    },
                    child: Text("skip"))
              ],
            ),
          ),
          // Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_VTsTN947wxfPvR6azPju20BotT7BNvh_VZLnjduuNQ&s'),
          Image.asset('assets/cuate.png'),
          Text(
            title,
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500),
          ),
          Text(
            subtitle,
            style: TextStyle(
                fontSize: 20, color: Colors.grey, fontWeight: FontWeight.w200),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    color: (index == 0) ? Color(0xFF8BA8B5) : Colors.grey,
                    shape: BoxShape.circle),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      color: (index == 1) ? Color(0xFF8BA8B5) : Colors.grey,
                      shape: BoxShape.circle),
                ),
              ),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    color: (index == 2) ? Color(0xFF8BA8B5) : Colors.grey,
                    shape: BoxShape.circle),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              if (controller.page == 2.0) {
                controller.animateToPage(0,
                    duration: Duration(seconds: 1), curve: Curves.slowMiddle);
              } else {
                print("object");
                
                controller.animateToPage(index+1,
                    duration: Duration(seconds: 1), curve: Curves.slowMiddle);
              }
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
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
