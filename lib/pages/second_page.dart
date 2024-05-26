import 'package:flutter/material.dart';

List<Map<String, dynamic>> users = [
  {'name': "Ahmad", 'age': 26, 'phone': "1234566652"},
  {'name': "Mohammad", 'age': 30, 'phone': "1234566652"},
  {'name': "Abd", 'age': 20, 'phone': "1234566652"},
  {'name': "Maya", 'age': 20, 'phone': "1234566652"},
  {'name': "Hayat", 'age': 20, 'phone': "1234566652"},
  {'name': "Tareq", 'age': 20, 'phone': "1234566652"},
  {'name': "Yasser", 'age': 20, 'phone': "1234566652"},
];

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListTile(
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
            title: Text(
              users[index]['name'],
              style: const TextStyle(
                color: Colors.pink,
              ),
            ),
            subtitle: Text(users[index]['phone']),
            leading: Text(
              users[index]['age'].toString(),
            ),
            trailing: const Icon(Icons.save),
            iconColor: Colors.amber,
            textColor: Colors.blue,
            hoverColor: Colors.deepOrange,
            splashColor: Colors.blueGrey,
            tileColor: index % 2 == 0 ? Colors.red : Colors.yellow,
            onTap: () {
              print("object");
            },
            onLongPress: () {
              print("on long press");
            },
          );
        },
      ),
    );
  }
}
