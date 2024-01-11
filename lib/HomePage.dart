// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:instagram_oynasi/InstaHome.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController parolController = TextEditingController();
  TextEditingController loginController = TextEditingController();
  String fakeparol = '1234';
  String fakelogin = 'saidcik';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  const Text(
                    "Instagram",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Shyest'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: loginController,
                      style: const TextStyle(color: Colors.amber),
                      cursorColor: Colors.blue,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white10,
                          hintText: "Username",
                          hintStyle: const TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(12))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: parolController,
                      style: const TextStyle(color: Colors.amber),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white10,
                        hintText: "Password",
                        hintStyle: const TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  MaterialButton(
                    disabledColor: Colors.blue[100],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    minWidth: MediaQuery.of(context).size.width - 20,
                    height: 50,
                    onPressed: () {
                      if (fakeparol == parolController.text &&
                          fakelogin == loginController.text) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const InstaHome()));
                      }
                    },
                    color: Colors.blue,
                    child: const Text(
                      "Log in",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        MaterialCommunityIcons.facebook,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Log in with Facebook',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  const Row(
                    children: [
                      Expanded(
                        child: Divider(
                          indent: 20,
                          endIndent: 20,
                          color: Colors.grey,
                          thickness: 0.5,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'or',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Divider(
                          indent: 20,
                          endIndent: 20,
                          color: Colors.grey,
                          thickness: 0.5,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  const Divider(
                    thickness: 0.5,
                    height: 10,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Instagram from Facebook',style: TextStyle(color: Colors.white),)
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
