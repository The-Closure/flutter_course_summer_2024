import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_session_one/config/get_it.dart';
import 'package:firebase_session_one/views/data_page.dart';
import 'package:firebase_session_one/views/local_storage.dart';
import 'package:firebase_session_one/views/storage_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

GlobalKey<NavigatorState>? navigtorKey = GlobalKey<NavigatorState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LocalStoragePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                try {
                  DatabaseReference ref =
                      FirebaseDatabase.instance.ref("users/123");

                  await ref.set({
                    "name": "John",
                    "age": 18,
                    "address": {"line1": "100 Mountain View"}
                  });
                } catch (e) {
                  print(
                      '-------------------------<<Exception>>----------------');
                  print(e);
                }
              },
              child: const Text('Save in real time db'),
            ),
            ElevatedButton(
              onPressed: () async {
                try {
                  DatabaseReference ref =
                      FirebaseDatabase.instance.ref("users/123");

// Only update the name, leave the age and address!
                  await ref.update({
                    "age": 19,
                  });
                } catch (e) {
                  print(
                      '-------------------------<<Exception>>----------------');
                  print(e);
                }
              },
              child: const Text('update'),
            ),
            ElevatedButton(
              onPressed: () async {
                try {
                  FirebaseFirestore db = FirebaseFirestore.instance;
// Create a new user with a first and last name
                  final user = <String, dynamic>{
                    "first": "Ada",
                    "last": "Lovelace",
                    "born": 2000
                  };

// Add a new document with a generated ID
                  await db
                      .collection("users")
                      .doc('3jmKJuATJm4RR1R4rN7n')
                      .set(user);
                } catch (e) {
                  print(
                      '-------------------------<<Exception>>----------------');
                  print(e);
                }
              },
              child: const Text('add data to firestore'),
            ),
          ],
        ),
      ),
    );
  }
}
