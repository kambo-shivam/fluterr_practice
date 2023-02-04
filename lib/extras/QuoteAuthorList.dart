import 'package:flutter/material.dart';
import 'package:flutterr/model/Quote.dart';
import 'package:flutterr/ui/CardFile.dart';

class QuoteAuthorList extends StatelessWidget {
  final List<Quote> list = [
    Quote(author: "Shivam Kamboj", name: "App imp"),
    Quote(author: "Developer.com", name: "Flutter "),
    Quote(author: "Ninja", name: "Technique")
  ];

  QuoteAuthorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("List1 view"),
          centerTitle: false,
          backgroundColor: Colors.blue,
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [Text("dbd"), Text("dbd")],
            )));
  }
}
