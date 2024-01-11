import 'package:flutter/material.dart';
import 'package:instagram_oynasi/editprofile.dart';

class Next extends StatefulWidget {
  const Next({super.key});

  @override
  State<Next> createState() => _NextState();
}

class _NextState extends State<Next> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Scaffold(
        body: Column(
          children: [
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              minWidth: MediaQuery.of(context).size.width - 80,
              height: 40,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const Edit()));
              },
              color: Colors.blue,
              child: const Text(
                "Log in",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
