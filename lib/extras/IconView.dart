import 'package:flutter/material.dart';

class IconView extends StatelessWidget {
  const IconView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My flutter beginning"),
        centerTitle: false,
        backgroundColor: Colors.amberAccent,
      ),
      body: const Center(
        child:
            Icon(Icons.account_balance, size: 80.0, color: Colors.deepOrange),
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
