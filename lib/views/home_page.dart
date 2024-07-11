import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_session_one/main.dart';
import 'package:firebase_session_one/services/notification_service.dart';
import 'package:firebase_session_one/views/notification_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    NotificationService().initNotification();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: navigtorKey,
      body: Center(
        child: TextButton(
          child: const Text('home page'),
          onPressed: () {
            setState(() {
              navigtorKey!.currentState!.push(
                MaterialPageRoute(
                  builder: (context) => NotificationPage(
                      message: RemoteMessage.fromMap({'data': 'sad'})),
                ),
              );
            });
          },
        ),
      ),
    );
  }
}
