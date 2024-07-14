import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DataPage extends StatelessWidget {
  const DataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            FirebaseFirestore db = FirebaseFirestore.instance;
// Create a new user with a first and last name
            final user = <String, dynamic>{
              "first": "mohammad",
              "last": "Lovelace",
              "born": 2000
            };

// Add a new document with a generated ID
            await db.collection("users").add(user);
          } catch (e) {
            print('-------------------------<<Exception>>----------------');
            print(e);
          }
        },
        child: const Icon(Icons.add),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('users').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                return Text(
                  snapshot.data!.docs[index]['first'],
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
