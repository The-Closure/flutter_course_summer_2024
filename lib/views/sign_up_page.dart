import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_session_one/main.dart';
import 'package:firebase_session_one/views/home_page.dart';
import 'package:firebase_session_one/views/sign_in_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            controller: email,
          ),
          TextField(
            controller: password,
          ),
          ElevatedButton(
            onPressed: () async {
              try {
                final credential =
                    await FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: email.text,
                  password: password.text,
                );
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              } on FirebaseAuthException catch (e) {
                if (e.code == 'weak-password') {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'The password provided is too weak.',
                      ),
                    ),
                  );
                  print('The password provided is too weak.');
                } else if (e.code == 'email-already-in-use') {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'The account already exists for that email.',
                      ),
                    ),
                  );
                  print('The account already exists for that email.');
                }
              } catch (e) {
                print(e);
              }
            },
            child: const Text(
              'sign up',
            ),
          ),
          Row(
            children: [
              const Text('If you have already account '),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignInPage(),
                    ),
                  );
                },
                child: const Text(
                  'login',
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}