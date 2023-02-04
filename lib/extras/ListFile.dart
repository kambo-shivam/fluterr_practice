import 'package:flutter/material.dart';

class ListFile extends StatelessWidget {
  final List<String> list = [
    "Hey!! How you doing?",
    "I am good. You say?",
    "I am doing pretty good. Thanks for asking"
  ];

  ListFile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("List view"),
          centerTitle: false,
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: list.map((e) => Text(e)).toList(),
          ),
        ));
  }
}
