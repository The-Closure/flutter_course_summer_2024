import 'package:flutter/material.dart';

TextEditingController emailController = TextEditingController();

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        itemBuilder: (context, index) {
          print("ItemBuilder Index $index");
          return TextField(
            controller: emailController,
            onChanged: (String value) {
              // print(value);
            },
            onSubmitted: (String value) {
              // print(value);
            },
            decoration: InputDecoration(
              prefix: InkWell(
                onTap: () {
                  print(emailController.text);
                },
                child: const Icon(Icons.print),
              ),
              hintText: "Please Enter Your Email",
              hintStyle: const TextStyle(
                color: Colors.purple,
              ),
              // label: Text("Email"),
              labelText: "Email",
              labelStyle: const TextStyle(
                color: Colors.pink,
              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    50,
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          print("separatorBuilder Index $index");
          return const Divider(
            // thickness: 10,
            indent: 50,
            endIndent: 50,
            height: 50,
          );
        },
        itemCount: 20,
      ),
    );
  }
}
