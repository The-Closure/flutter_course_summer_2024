import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          child: const FlutterLogo(),
          onPressed: () {
            print("Hello");
          },
        ),
        // ignore: sized_box_for_whitespace
        // body: Container(
        //   height: 500,
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Container(
        //         decoration: BoxDecoration(
        //           gradient: const LinearGradient(
        //             begin: Alignment.bottomLeft,
        //             end: Alignment(0.5, -0.5),
        //             colors: [
        //               Colors.red,
        //               Colors.green,
        //             ],
        //           ),
        //           color: Colors.amber,
        //           borderRadius: BorderRadius.circular(50),
        //           border: Border.all(
        //             color: Colors.pink,
        //             width: 5,
        //             // style: BorderStyle.solid,
        //           ),
        //           boxShadow: const [
        //             // BoxShadow(
        //             //   color: Colors.grey,
        //             //   offset: Offset(20, 20),
        //             //   blurRadius: 20,
        //             //   spreadRadius: 10,
        //             // ),
        //             // BoxShadow(
        //             //   color: Colors.purple,
        //             //   offset: Offset(-20, -20),
        //             //   blurRadius: 20,
        //             //   spreadRadius: 10,
        //             // ),
        //           ],
        //           // shape: BoxShape.circle,
        //         ),
        //         height: 200,
        //         width: 200,
        //       ),
        //       Container(
        //         decoration: BoxDecoration(
        //           gradient: const LinearGradient(
        //             begin: Alignment.bottomLeft,
        //             end: Alignment(0.5, -0.5),
        //             colors: [
        //               Colors.red,
        //               Colors.green,
        //             ],
        //           ),
        //           color: Colors.amber,
        //           borderRadius: BorderRadius.circular(50),
        //           border: Border.all(
        //             color: Colors.pink,
        //             width: 5,
        //             // style: BorderStyle.solid,
        //           ),
        //           boxShadow: const [
        //             // BoxShadow(
        //             //   color: Colors.grey,
        //             //   offset: Offset(20, 20),
        //             //   blurRadius: 20,
        //             //   spreadRadius: 10,
        //             // ),
        //             // BoxShadow(
        //             //   color: Colors.purple,
        //             //   offset: Offset(-20, -20),
        //             //   blurRadius: 20,
        //             //   spreadRadius: 10,
        //             // ),
        //           ],
        //           // shape: BoxShape.circle,
        //         ),
        //         height: 200,
        //         width: 200,
        //       ),
        //       Container(
        //         decoration: BoxDecoration(
        //           gradient: const LinearGradient(
        //             begin: Alignment.bottomLeft,
        //             end: Alignment(0.5, -0.5),
        //             colors: [
        //               Colors.red,
        //               Colors.green,
        //             ],
        //           ),
        //           color: Colors.amber,
        //           borderRadius: BorderRadius.circular(50),
        //           border: Border.all(
        //             color: Colors.pink,
        //             width: 5,
        //             // style: BorderStyle.solid,
        //           ),
        //           boxShadow: const [
        //             // BoxShadow(
        //             //   color: Colors.grey,
        //             //   offset: Offset(20, 20),
        //             //   blurRadius: 20,
        //             //   spreadRadius: 10,
        //             // ),
        //             // BoxShadow(
        //             //   color: Colors.purple,
        //             //   offset: Offset(-20, -20),
        //             //   blurRadius: 20,
        //             //   spreadRadius: 10,
        //             // ),
        //           ],
        //           // shape: BoxShape.circle,
        //         ),
        //         height: 200,
        //         width: 200,
        //       ),
        //       Container(
        //         decoration: BoxDecoration(
        //           gradient: const LinearGradient(
        //             begin: Alignment.bottomLeft,
        //             end: Alignment(0.5, -0.5),
        //             colors: [
        //               Colors.red,
        //               Colors.green,
        //             ],
        //           ),
        //           color: Colors.amber,
        //           borderRadius: BorderRadius.circular(50),
        //           border: Border.all(
        //             color: Colors.pink,
        //             width: 5,
        //             // style: BorderStyle.solid,
        //           ),
        //           boxShadow: const [
        //             // BoxShadow(
        //             //   color: Colors.grey,
        //             //   offset: Offset(20, 20),
        //             //   blurRadius: 20,
        //             //   spreadRadius: 10,
        //             // ),
        //             // BoxShadow(
        //             //   color: Colors.purple,
        //             //   offset: Offset(-20, -20),
        //             //   blurRadius: 20,
        //             //   spreadRadius: 10,
        //             // ),
        //           ],
        //           // shape: BoxShape.circle,
        //         ),
        //         height: 200,
        //         width: 200,
        //       ),
        //     ],
        //   ),
        // ),
        // ignore: sized_box_for_whitespace
        body: Container(
          color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment(0.5, -0.5),
                        colors: [
                          Colors.red,
                          Colors.green,
                        ],
                      ),
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Colors.pink,
                        width: 5,
                        // style: BorderStyle.solid,
                      ),
                      boxShadow: const [
                        // BoxShadow(
                        //   color: Colors.grey,
                        //   offset: Offset(20, 20),
                        //   blurRadius: 20,
                        //   spreadRadius: 10,
                        // ),
                        // BoxShadow(
                        //   color: Colors.purple,
                        //   offset: Offset(-20, -20),
                        //   blurRadius: 20,
                        //   spreadRadius: 10,
                        // ),
                      ],
                      // shape: BoxShape.circle,
                    ),
                    height: 100,
                    width: 100,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment(0.5, -0.5),
                        colors: [
                          Colors.red,
                          Colors.green,
                        ],
                      ),
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Colors.pink,
                        width: 5,
                        // style: BorderStyle.solid,
                      ),
                      boxShadow: const [
                        // BoxShadow(
                        //   color: Colors.grey,
                        //   offset: Offset(20, 20),
                        //   blurRadius: 20,
                        //   spreadRadius: 10,
                        // ),
                        // BoxShadow(
                        //   color: Colors.purple,
                        //   offset: Offset(-20, -20),
                        //   blurRadius: 20,
                        //   spreadRadius: 10,
                        // ),
                      ],
                      // shape: BoxShape.circle,
                    ),
                    height: 100,
                    width: 100,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment(0.5, -0.5),
                        colors: [
                          Colors.red,
                          Colors.green,
                        ],
                      ),
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Colors.pink,
                        width: 5,
                        // style: BorderStyle.solid,
                      ),
                      boxShadow: const [
                        // BoxShadow(
                        //   color: Colors.grey,
                        //   offset: Offset(20, 20),
                        //   blurRadius: 20,
                        //   spreadRadius: 10,
                        // ),
                        // BoxShadow(
                        //   color: Colors.purple,
                        //   offset: Offset(-20, -20),
                        //   blurRadius: 20,
                        //   spreadRadius: 10,
                        // ),
                      ],
                      // shape: BoxShape.circle,
                    ),
                    height: 100,
                    width: 100,
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 100),
                padding: const EdgeInsets.all(20),
                color: Colors.red,
                height: 200,
                width: 200,
                child: const Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment(0.5, -0.5),
                    colors: [
                      Colors.red,
                      Colors.green,
                    ],
                  ),
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: Colors.pink,
                    width: 5,
                    // style: BorderStyle.solid,
                  ),
                  boxShadow: const [
                    // BoxShadow(
                    //   color: Colors.grey,
                    //   offset: Offset(20, 20),
                    //   blurRadius: 20,
                    //   spreadRadius: 10,
                    // ),
                    // BoxShadow(
                    //   color: Colors.purple,
                    //   offset: Offset(-20, -20),
                    //   blurRadius: 20,
                    //   spreadRadius: 10,
                    // ),
                  ],
                  // shape: BoxShape.circle,
                ),
                height: 200,
                width: 500,
                child: const Center(
                  child: Text(
                    "Hello Flutter",
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          color: Colors.grey,
                          offset: Offset(10, 10),
                          blurRadius: 5,
                        ),
                      ],
                      letterSpacing: 5,
                      wordSpacing: 5,
                      height: 10,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w400,
                      backgroundColor: Colors.white,
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment(0.5, -0.5),
                    colors: [
                      Colors.red,
                      Colors.green,
                    ],
                  ),
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: Colors.pink,
                    width: 5,
                    // style: BorderStyle.solid,
                  ),
                  boxShadow: const [
                    // BoxShadow(
                    //   color: Colors.grey,
                    //   offset: Offset(20, 20),
                    //   blurRadius: 20,
                    //   spreadRadius: 10,
                    // ),
                    // BoxShadow(
                    //   color: Colors.purple,
                    //   offset: Offset(-20, -20),
                    //   blurRadius: 20,
                    //   spreadRadius: 10,
                    // ),
                  ],
                  // shape: BoxShape.circle,
                ),
                height: 200,
                width: 200,
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Padding",
                  style: TextStyle(
                    fontSize: 50,
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 70,
                height: 70,
                child: Icon(
                  Icons.favorite,
                  size: 50,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
