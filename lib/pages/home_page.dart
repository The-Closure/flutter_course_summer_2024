import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/background.png',
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 20,
                    ),
                    // contentPadding: const EdgeInsets.only(
                    //   top: 10,
                    //   right: 20,
                    //   left: 50,
                    //   bottom: 30,
                    // ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      // borderRadius: BorderRadius.circular(20),
                    ),
                    title: const Text(
                      "ListTile",
                      style: TextStyle(
                        color: Colors.pink,
                      ),
                    ),
                    subtitle: const Text("Subtitle"),
                    leading: const Icon(Icons.list),
                    trailing: const Icon(Icons.save),
                    iconColor: Colors.amber,
                    textColor: Colors.blue,
                    hoverColor: Colors.deepOrange,
                    splashColor: Colors.blueGrey,
                    tileColor: Colors.brown,
                    onTap: () {
                      print("object");
                    },
                    onLongPress: () {
                      print("on long press");
                    },
                  ),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 20,
                  ),
                  // contentPadding: const EdgeInsets.only(
                  //   top: 10,
                  //   right: 20,
                  //   left: 50,
                  //   bottom: 30,
                  // ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    // borderRadius: BorderRadius.circular(20),
                  ),
                  title: const Text(
                    "ListTile",
                    style: TextStyle(
                      color: Colors.pink,
                    ),
                  ),
                  subtitle: const Text("Subtitle"),
                  leading: const Icon(Icons.list),
                  trailing: const Icon(Icons.save),
                  iconColor: Colors.amber,
                  textColor: Colors.blue,
                  hoverColor: Colors.deepOrange,
                  splashColor: Colors.blueGrey,
                  tileColor: Colors.brown,
                  onTap: () {
                    print("object");
                  },
                  onLongPress: () {
                    print("on long press");
                  },
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 20,
                  ),
                  // contentPadding: const EdgeInsets.only(
                  //   top: 10,
                  //   right: 20,
                  //   left: 50,
                  //   bottom: 30,
                  // ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    // borderRadius: BorderRadius.circular(20),
                  ),
                  title: const Text(
                    "ListTile",
                    style: TextStyle(
                      color: Colors.pink,
                    ),
                  ),
                  subtitle: const Text("Subtitle"),
                  leading: const Icon(Icons.list),
                  trailing: const Icon(Icons.save),
                  iconColor: Colors.amber,
                  textColor: Colors.blue,
                  hoverColor: Colors.deepOrange,
                  splashColor: Colors.blueGrey,
                  tileColor: Colors.brown,
                  onTap: () {
                    print("object");
                  },
                  onLongPress: () {
                    print("on long press");
                  },
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 20,
                  ),
                  // contentPadding: const EdgeInsets.only(
                  //   top: 10,
                  //   right: 20,
                  //   left: 50,
                  //   bottom: 30,
                  // ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    // borderRadius: BorderRadius.circular(20),
                  ),
                  title: const Text(
                    "ListTile",
                    style: TextStyle(
                      color: Colors.pink,
                    ),
                  ),
                  subtitle: const Text("Subtitle"),
                  leading: const Icon(Icons.list),
                  trailing: const Icon(Icons.save),
                  iconColor: Colors.amber,
                  textColor: Colors.blue,
                  hoverColor: Colors.deepOrange,
                  splashColor: Colors.blueGrey,
                  tileColor: Colors.brown,
                  onTap: () {
                    print("object");
                  },
                  onLongPress: () {
                    print("on long press");
                  },
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 20,
                  ),
                  // contentPadding: const EdgeInsets.only(
                  //   top: 10,
                  //   right: 20,
                  //   left: 50,
                  //   bottom: 30,
                  // ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    // borderRadius: BorderRadius.circular(20),
                  ),
                  title: const Text(
                    "ListTile",
                    style: TextStyle(
                      color: Colors.pink,
                    ),
                  ),
                  subtitle: const Text("Subtitle"),
                  leading: const Icon(Icons.list),
                  trailing: const Icon(Icons.save),
                  iconColor: Colors.amber,
                  textColor: Colors.blue,
                  hoverColor: Colors.deepOrange,
                  splashColor: Colors.blueGrey,
                  tileColor: Colors.brown,
                  onTap: () {
                    print("object");
                  },
                  onLongPress: () {
                    print("on long press");
                  },
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 20,
                  ),
                  // contentPadding: const EdgeInsets.only(
                  //   top: 10,
                  //   right: 20,
                  //   left: 50,
                  //   bottom: 30,
                  // ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    // borderRadius: BorderRadius.circular(20),
                  ),
                  title: const Text(
                    "ListTile",
                    style: TextStyle(
                      color: Colors.pink,
                    ),
                  ),
                  subtitle: const Text("Subtitle"),
                  leading: const Icon(Icons.list),
                  trailing: const Icon(Icons.save),
                  iconColor: Colors.amber,
                  textColor: Colors.blue,
                  hoverColor: Colors.deepOrange,
                  splashColor: Colors.blueGrey,
                  tileColor: Colors.brown,
                  onTap: () {
                    print("object");
                  },
                  onLongPress: () {
                    print("on long press");
                  },
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 20,
                  ),
                  // contentPadding: const EdgeInsets.only(
                  //   top: 10,
                  //   right: 20,
                  //   left: 50,
                  //   bottom: 30,
                  // ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    // borderRadius: BorderRadius.circular(20),
                  ),
                  title: const Text(
                    "ListTile",
                    style: TextStyle(
                      color: Colors.pink,
                    ),
                  ),
                  subtitle: const Text("Subtitle"),
                  leading: const Icon(Icons.list),
                  trailing: const Icon(Icons.save),
                  iconColor: Colors.amber,
                  textColor: Colors.blue,
                  hoverColor: Colors.deepOrange,
                  splashColor: Colors.blueGrey,
                  tileColor: Colors.blue,
                  onTap: () {
                    print("object");
                  },
                  onLongPress: () {
                    print("on long press");
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
