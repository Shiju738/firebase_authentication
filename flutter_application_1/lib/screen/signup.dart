// ignore_for_file: camel_case_types

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/logintext/my_button.dart';
import 'package:flutter_application_1/logintext/my_textfield.dart';
import 'package:flutter_application_1/logintext/square.dart';
import 'package:flutter_application_1/screen/login.dart';

class signUp extends StatefulWidget {
  const signUp({
    super.key,
  });

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final registerController = TextEditingController();

  void signUser() async {
    if (passwordController.text != registerController.text) {
      Navigator.pop(context);
    }

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: usernameController.text, password: passwordController.text);
    } on FirebaseAuthException {
      // ignore: use_build_context_synchronously
      Navigator.pop(context);
    }
  }

  void _dummy() {}
  Future<void> _signInWithGoogle() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(children: [
              const SizedBox(
                height: 40,
              ),
              const Icon(Icons.lock, size: 100),
              const SizedBox(
                height: 40,
              ),
              Text(
                'Lets create an account for you',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              MyTextField(
                  controller: usernameController,
                  hintText: 'User Name',
                  obscureText: false),
              const SizedBox(
                height: 10,
              ),
              MyTextField(
                controller: passwordController,
                hintText: 'password',
                obscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              MyTextField(
                controller: registerController,
                hintText: 'confirm password',
                obscureText: true,
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              MyButton(
                onTap: signUser,
                textfield: 'Sign Up',
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  square(
                    imagePath: 'images/apple-logo.png',
                    onTab: _signInWithGoogle,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  square(
                    imagePath: 'images/chrome.png',
                    onTab: _dummy,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  square(
                    imagePath: 'images/facebook.png',
                    onTab: _dummy,
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account'),
                  const SizedBox(
                    width: 4,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => loginPage(),
                          ));
                    },
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
