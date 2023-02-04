import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map? data = {};
  String titleTime = "My flutter beginning";

  @override
  Widget build(BuildContext context) {
    if (ModalRoute.of(context)?.settings.arguments != null) {
      data =
          ModalRoute.of(context)?.settings.arguments as Map<String?, String?>;

      print(data?['time']);
      titleTime = data?['time'];
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(titleTime),
        centerTitle: false,
        backgroundColor: Colors.amberAccent,
      ),
      body: Image.asset(
          "assets/contest_button.png") /*"https://thumbs.dreamstime.com/z/beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.jpg"*/,
      floatingActionButton: FloatingActionButton(
        child: Text(
          "+",
          style: TextStyle(color: Colors.yellow, fontSize: 40.0),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/location');
        },
        backgroundColor: Colors.white70,
      ),
      backgroundColor: Colors.grey,
    );
  }
}
