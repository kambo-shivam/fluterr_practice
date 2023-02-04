import 'package:flutter/material.dart';

class ButtonFile extends StatelessWidget {
  const ButtonFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My flutter beginning"),
        centerTitle: false,
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: IconButton(
          onPressed: () {
            print("Icon clicked");
          },
          icon: const Icon(Icons.access_alarms, color: Colors.deepOrange),
        ),
      ),
    );
  }
}
