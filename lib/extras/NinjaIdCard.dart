import 'package:flutter/material.dart';
import 'package:flutterr/extras/Text.dart';

class NinjaIdCard extends StatelessWidget {
  const NinjaIdCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My flutter beginning"),
        centerTitle: true,
        backgroundColor: Colors.white24,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 40.0,
              child: Image.asset("assets/contest_button.png"),
            ),
            const SizedBox(height: 20.0),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(child: Text("Welcome!!")),
            ),
            const SizedBox(height: 20.0),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Name:"),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Shivam kamboj",
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontFamily: "italic",
                      letterSpacing: 2.0)),
            ),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.email)),
                const Text(
                  "shivam@appventurez.com",
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontFamily: "italic",
                      letterSpacing: 2.0),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
