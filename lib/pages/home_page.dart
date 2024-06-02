import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  String inputText = "";
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailController,
                onChanged: (value) {},
                onTap: () {
                  print('i am using text field');
                },
                onSubmitted: (value) {
                  inputText = value;
                },
                obscureText: false,
                obscuringCharacter: '*',
                maxLines: 1,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(30),
                  filled: true,
                  fillColor: Colors.grey.shade300,
                  hoverColor: Colors.indigoAccent,
                  // focusColor: Colors.redAccent,
                  // prefix: const Icon(Icons.email_outlined),
                  prefixIcon: const Icon(Icons.attach_email_outlined),
                  prefixIconColor: Colors.amber,
                  prefixText: "email",
                  prefixStyle: const TextStyle(
                    color: Colors.deepOrange,
                  ),
                  suffix: const Icon(Icons.visibility),
                  suffixIcon: const Icon(Icons.visibility_off),
                  suffixIconColor: Colors.deepOrange,
                  // suffixText: ,
                  // suffixStyle: ,
                  icon: const Icon(
                    Icons.email,
                  ),
                  iconColor: Colors.red,
                  // label: Text(
                  //   "Email",
                  //   style: TextStyle(
                  //     fontSize: 20,
                  //     color: Colors.pink,
                  //   ),
                  // ),
                  labelText: 'Email',
                  labelStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.pink,
                  ),
                  floatingLabelStyle: const TextStyle(
                    fontSize: 30,
                    color: Colors.orange,
                  ),
                  hintText: "Please enter your email",
                  hintStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.brown,
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        10,
                      ),
                    ),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 3,
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        30,
                      ),
                    ),
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 5,
                    ),
                  ),
                  // disabledBorder: ,

                  // border: const OutlineInputBorder(
                  //   borderRadius: BorderRadius.all(
                  //     Radius.circular(
                  //       10,
                  //     ),
                  //   ),
                  //   borderSide: BorderSide(
                  //     color: Colors.red,
                  //     width: 10,
                  //   ),
                  // ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  // print(inputText);
                  print(emailController.text);
                },
                child: Container(
                  width: 200,
                  height: 70,
                  color: Colors.red,
                  child: const Center(
                      child: Text(
                    "print inputText value",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
