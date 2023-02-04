import 'package:flutter/material.dart';

import '../model/Quote.dart';

class CardFile extends StatelessWidget {
  final Quote quote;
  VoidCallback? delete;

  CardFile({super.key, required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("${quote.name} by ${quote.author}"),
          ),
          const SizedBox(
            height: 10.0,
          ),
          TextButton.icon(
              onPressed:


              delete,
              icon: const Icon(Icons.delete),
              label: const Text("delete"))
        ],
      ),
    );
  }
}
