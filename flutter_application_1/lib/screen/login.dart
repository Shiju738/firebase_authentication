import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/auth_service.dart';
import 'package:flutter_application_1/logintext/my_button.dart';
import 'package:flutter_application_1/logintext/my_textfield.dart';
import 'package:flutter_application_1/logintext/square.dart';
import 'package:flutter_application_1/screen/signUp.dart';

// ignore: camel_case_types
class loginPage extends StatelessWidget {
  loginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUser() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: usernameController.text, password: passwordController.text);
  }

  void _dummy() {}

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
                'Welcome back you\'ve been missed!',
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
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MyButton(
                onTap: signUser,
                textfield: 'sign in',
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
                    imagePath: 'images/chrome.png',
                    onTab: () => AuthServicess().signInWithGoogle(),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  square(
                    imagePath: 'images/apple-logo.png',
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
                  const Text('Not a member?'),
                  const SizedBox(
                    width: 4,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const signUp(),
                          ));
                    },
                    child: const Text(
                      'Register now',
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
