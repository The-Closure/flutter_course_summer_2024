import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // String name = '';
  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: name,
            obscureText: true,
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.remove_red_eye),
              prefix: Text("+963"),
              prefixIcon: Icon(Icons.phone),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 570,
            child: GridView.builder(
              // ?  Max of values in main axis
              // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              //   maxCrossAxisExtent: 200,
              //   mainAxisSpacing: 10,
              //   crossAxisSpacing: 10,
              // ),

              // ? item extent with count in cross axis
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 8,

                //   // childAspectRatio: 1 / 1,
                //   // mainAxisExtent: 100,
              ),
              itemCount: 10,

              padding: EdgeInsets.all(10),
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  print(name.selection);
                },
                child: Container(
                  color: Colors.blue.withAlpha(100),
                  child: Center(
                      child: Text(
                    index.toString(),
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
