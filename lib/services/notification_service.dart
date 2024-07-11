import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_session_one/main.dart';
import 'package:firebase_session_one/views/notification_page.dart';
import 'package:flutter/material.dart';

class NotificationService {
  Future<void>  initNotification() async {
    final firebaseMessaging = FirebaseMessaging.instance;
    firebaseMessaging.requestPermission();
    final String? fcmToken = await firebaseMessaging.getToken();
    print(fcmToken);
    await initPushNotification();
  }
}

Future<void> initPushNotification() async {
  RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();

    // If the message also contains a data property with a "type" of "chat",
    // navigate to a chat screen
    if (initialMessage != null) {
      handleMessage(initialMessage);
    }
  FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
}

Future<void> handleBackgroundMessage(RemoteMessage message) async {
  print('${message.notification!.title}');
  print('${message.notification!.body}');
  print('${message.data}');
}

Future<dynamic> handleMessage(RemoteMessage? remoteMessage) async {
  if (remoteMessage == null) return;

  navigtorKey!.currentState!.push(
    MaterialPageRoute(
      builder: (context) => NotificationPage(message: remoteMessage!),
    ),
  );
}
