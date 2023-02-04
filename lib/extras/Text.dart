import 'package:flutter/material.dart';

class TextView extends StatelessWidget {
  const TextView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My flutter beginning"),
        centerTitle: false,
        backgroundColor: Colors.amberAccent,
      ),
      body: Text(
        "Hi Flutter developer!!",
        style: TextStyle(
            fontSize: 20.0,
            letterSpacing: 2.0,
            color: Colors.yellow,
            fontFamily: "italic"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text(
          "+",
          style: TextStyle(color: Colors.yellow, fontSize: 40.0),
        ),
        onPressed: null,
        backgroundColor: Colors.white70,
      ),
      backgroundColor: Colors.grey,
    );
  }
}
