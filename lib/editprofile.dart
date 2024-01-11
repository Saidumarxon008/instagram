import 'package:flutter/material.dart';
import 'package:instagram_oynasi/next.dart';

class Edit extends StatefulWidget {
  const Edit({super.key});

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const Next()));
                },
                icon: const Icon(
                  Icons.dangerous,
                  color: Colors.grey,
                )),
            const Text('Edit Profile'),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const Next()));
                },
                icon: const Icon(
                  Icons.task_alt_outlined,
                  color: Colors.blue,
                )),
          ],
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                      'https://cdn.icon-icons.com/icons2/3261/PNG/512/instagram_logo_icon_206739.png',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUV-RtJlRNIRpoUuqQYwcicz0DgwHGm5DrZA&usqp=CAU'),
                  ),
                ),
              ],
            ),
            const Text(
              'Edit picture or avatar',
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
            Container(
              color: Colors.transparent,
              child: const TextField(
                style: TextStyle(color: Colors.amber),
                decoration: InputDecoration(
                  hintText: "Name",
                  hintStyle: TextStyle(
                    color: Colors.white54,
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                ),
              ),
            ),
            Container(
              color: Colors.transparent,
              child: const TextField(
                style: TextStyle(color: Colors.amber),
                decoration: InputDecoration(
                  hintText: "Username",
                  hintStyle: TextStyle(color: Colors.white54),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                ),
              ),
            ),
            Container(
              color: Colors.transparent,
              child: const TextField(
                style: TextStyle(color: Colors.amber),
                decoration: InputDecoration(
                  hintText: "Pronouns",
                  hintStyle: TextStyle(color: Colors.white54),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                ),
              ),
            ),
            Container(
              color: Colors.transparent,
              child: const TextField(
                style: TextStyle(color: Colors.amber),
                decoration: InputDecoration(
                  hintText: "Bio",
                  hintStyle: TextStyle(color: Colors.white54),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Add link",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.transparent,
              child: const TextField(
                style: TextStyle(color: Colors.amber),
                decoration: InputDecoration(
                  hintText: "Gender",
                  hintStyle: TextStyle(color: Colors.white54),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Switch to professional account',
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: const Text(
                    'Personal information settings',
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              height: 0.5,
              thickness: 1,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
