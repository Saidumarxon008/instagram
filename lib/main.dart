import 'package:flutter/material.dart';
import 'package:instagram_oynasi/HomePage.dart';
import 'package:instagram_oynasi/editprofile.dart';
import 'package:instagram_oynasi/next.dart';

void main() {
  runApp(const MaterialApp(
    home: IntroPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Instagram",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Shyest'),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage('https://cdn.icon-icons.com/icons2/3261/PNG/512/instagram_logo_icon_206739.png',),),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "saidcik_oo8",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    minWidth: MediaQuery.of(context).size.width - 80,
                    height: 40,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const LoginPage()));
                    },
                    color: Colors.blue,
                    child: const Text(
                      "Log in",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Switch accounts",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have account?",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Sign up",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
