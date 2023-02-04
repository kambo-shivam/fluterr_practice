import 'package:flutter/material.dart';

class PaddingMarginFile extends StatelessWidget {
  const PaddingMarginFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My flutter beginning"),
        centerTitle: false,
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        color: Colors.deepOrange,
        padding: const EdgeInsets.all(30.0),
        margin: const EdgeInsets.all(10.0),
        child: Container(
            color: Colors.teal,
            child: const Text(
              "Hello",
              style: TextStyle(color: Colors.black),
            ),
        ),
      ),
    );
  }
}
