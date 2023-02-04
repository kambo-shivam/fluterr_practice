import 'package:flutter/material.dart';
import 'package:flutterr/extras/Text.dart';

class NinjaIdIncrement extends StatefulWidget {
  const NinjaIdIncrement({Key? key}) : super(key: key);

  @override
  State<NinjaIdIncrement> createState() => _NinjaIdIncrementState();
}

class _NinjaIdIncrementState extends State<NinjaIdIncrement> {
  var incrementNumber = 0;

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all<double>(0.0),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.amber),
                    overlayColor:
                        MaterialStateProperty.all<Color>(Colors.transparent),
                  ),
                  child: Text(
                    "$incrementNumber",
                    style: const TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    setState(() {
                      incrementNumber += 1;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
