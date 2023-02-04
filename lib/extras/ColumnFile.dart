import 'package:flutter/material.dart';

class ColumnFile extends StatelessWidget {
  const ColumnFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My flutter beginning"),
        centerTitle: false,
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/contest_button.png"))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          textBaseline: TextBaseline.alphabetic,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: const Text("Hello"),
              padding: EdgeInsets.fromLTRB(0, 15.0, 0, 0),
            ),
            TextButton(
                onPressed: () {
                  print("Click me clicked");
                },
                child: const Text(
                  "Click Me",
                  style: TextStyle(color: Colors.deepOrange),
                )),
            ElevatedButton(
                onPressed: () {
                  print("Hello Elevation button");
                },
                child: Text("Hello Elevation Button"))
          ],
        ),
      ),
    );
  }
}
