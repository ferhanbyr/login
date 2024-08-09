
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:project1/components/my_button.dart';
import 'package:project1/components/my_textfield.dart';
import 'package:project1/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text, password: passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 220, 220),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
                horizontal: 10), // Add padding to the sides
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center the content
              children: [
                SizedBox(height: 40),
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
                SizedBox(height: 50),
                const Text(
                  "WELCOME",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 24),
                MyTextfield(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                ),
                SizedBox(height: 25),
                MyTextfield(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Color.fromARGB(255, 76, 66, 66),
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 25),
                MyButton(
                  onTap: signUserIn,
                ),
                const SizedBox(
                  height: 25,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                        ),
                      ),
                      Text("Or continue with"),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(
                      imagePath: 'lib/images/google.png',
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    SquareTile(
                      imagePath: 'lib/images/apple.png',
                    )
                  ],
                ),
                const SizedBox(height: 25),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a member?', style: TextStyle(fontSize: 17)),
                    SizedBox(
                      width: 4,
                    ),
                    Text('Register now',
                        style: TextStyle(color: Colors.blue, fontSize: 17))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
