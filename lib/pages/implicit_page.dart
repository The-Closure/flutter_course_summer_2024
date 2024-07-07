import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ImplicitPage extends StatefulWidget {
  const ImplicitPage({super.key});

  @override
  State<ImplicitPage> createState() => _ImplicitPageState();
}

class _ImplicitPageState extends State<ImplicitPage>
    with SingleTickerProviderStateMixin {
  Color conatinerColor = Colors.red;
  double width = 300;
  double height = 500;
  double margin = 10;
  double padding = 20;
  Tween<double> styleTween = Tween<double>(begin: 0, end: 1);

  late AnimationController animationController;

  bool isFav = false;

  late Animation<Color?> animtionColor;
  late Animation<double> animationSize;

  @override
  void initState() {
    animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    animtionColor = ColorTween(begin: Colors.grey.shade400, end: Colors.red)
        .animate(animationController);

    // animationSize = Tween<double>(
    //   begin: 100,
    //   end: 150,
    // ).animate(animationController);
    // animationController.addListener(() {
    //   // print(animtionColor.value);
    // });
    animationSize = TweenSequence<double>([
      TweenSequenceItem(tween: Tween<double>(begin: 100, end: 150), weight: 50),
      TweenSequenceItem(tween: Tween<double>(begin: 150, end: 100), weight: 50),
    ]).animate(animationController);
    animationController.addStatusListener((status) {
      print(status);
      if (status == AnimationStatus.completed) {
        isFav = true;
      } else {
        isFav = false;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AnimatedContainer(
            curve: Curves.bounceIn,
            margin: EdgeInsets.all(margin),
            padding: EdgeInsets.all(padding),
            width: width,
            height: height,
            color: conatinerColor,
            duration: const Duration(seconds: 3),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      conatinerColor = Colors.amber;
                      width = 500;
                      height = 700;
                      margin = 50;
                      padding = 50;
                    });
                  },
                  child: const Text(
                    'change conatiner',
                  ),
                ),
                TweenAnimationBuilder<double>(
                  tween: styleTween,
                  duration: const Duration(seconds: 5),
                  builder: (context, value, child) {
                    // print(value);
                    return Opacity(
                      opacity: value,
                      child: Padding(
                        padding: EdgeInsets.only(top: value * 50),
                        child: child,
                      ),
                    );
                  },
                  child: const Text(
                    'Hello World',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                AnimatedBuilder(
                    animation: animationController,
                    builder: (context, _) {
                      return IconButton(
                        color: animtionColor.value,
                        iconSize: animationSize.value,
                        onPressed: () async {
                          if (animationController.isCompleted) {
                            animationController.reverse();
                          } else {
                            animationController.forward();
                          }
                          // animationController.forward();
                          // await Future.delayed(
                          //   const Duration(seconds: 1),
                          // );
                          // animationController.reverse();
                          // isFav
                          //     ? animationController.reverse()
                          //     : animationController.forward();
                        },
                        icon: const Icon(
                          Icons.favorite,
                        ),
                      );
                    }),
                Lottie.network(
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.error);
                  },
                  'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FlowExamplePage extends StatefulWidget {
  const FlowExamplePage({super.key});

  @override
  State<FlowExamplePage> createState() => _FlowExamplePageState();
}

class _FlowExamplePageState extends State<FlowExamplePage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 400,
        height: 400,
        child: InkWell(
          onHover: (inOrOut) {
            if (inOrOut) {
              controller.forward();
            } else {
              controller.reverse();
            }
          },
          onTap: () {},
          child: Flow(
            delegate: MyFlowDelegate(animation: controller),
            children: const [
              Icon(Icons.facebook),
              Icon(Icons.person),
              Icon(Icons.male),
              Icon(Icons.mail),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        if (controller.isCompleted) {
          controller.reverse();
        } else {
          controller.forward();
        }
      }),
    );
  }
}

class MyFlowDelegate extends FlowDelegate {
  Animation animation;

  MyFlowDelegate({required this.animation}) : super(repaint: animation);

  @override
  void paintChildren(FlowPaintingContext context) {
    for (var i = 0; i < context.childCount; i++) {
      double size = context.getChildSize(i)!.width;
      context.paintChild(i,
          transform: Matrix4.translationValues(
              i * size * animation.value, i * size * animation.value, 0));
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    return false;
  }
}
