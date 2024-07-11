
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_session_one/main.dart';
import 'package:firebase_session_one/views/home_page.dart';
import 'package:firebase_session_one/views/sign_up_page.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
              print('==========');
              try {
                print('==========================');
                final credential =
                    await FirebaseAuth.instance.signInWithEmailAndPassword(
                  email: email.text,
                  password: password.text,
                );
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ));
                print(credential);
              } on FirebaseAuthException catch (e) {
                print(e);
                if (e.code == 'user-not-found') {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'No user found for that email.',
                      ),
                    ),
                  );
                  print('No user found for that email.');
                } else if (e.code == 'wrong-password') {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Wrong password provided for that user.',
                      ),
                    ),
                  );
                  print('Wrong password provided for that user.');
                }
              } catch (e) {
                print(e);
              }
            },
            child: const Text(
              'login',
            ),
          ),
          Row(
            children: [
              const Text('If you don\'t have account'),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpPage(),
                    ),
                  );
                },
                child: const Text(
                  'Sign Up',
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}