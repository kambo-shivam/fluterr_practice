import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterr/ui/LocationCardFile.dart';
import 'package:flutterr/world_time/WorldTime.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);


  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  var counter = 0;
  List<WorldTime> locations = [
    WorldTime('London'),
    WorldTime('Athens'),
    WorldTime('Cairo'),
    WorldTime('Nairobi'),
    WorldTime('Chicago'),
    WorldTime('New York'),
    WorldTime('Seoul'),
    WorldTime('Jakarta'),
  ];

  void getData() async {
    Response response = await http
        .get(Uri.parse('http://worldtimeapi.org/api/timezone/Europe/London'));
    Map map = jsonDecode(response.body);
    String date = map['datetime'];
    String utcOffSet = map['utc_offset'];
    print(map);
    print(date);
    print(utcOffSet);

    DateTime dateTime = DateTime.parse(date);
    print(dateTime);

    /* Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));

    Map map = jsonDecode(response.body);
    print("title is ${map['title']}");*/
  }

  @override
  void initState() {
    print("Init state....");
    super.initState();
    getData();
    print("Hey There!!");
  }

  @override
  void dispose() {
    print("dispose state....");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("build state....");
    return Scaffold(
        appBar: AppBar(
          title: Text("Choosing Location"),
        ),
        body: SafeArea(
          child: ListView.builder(
              itemCount: locations.length,
              itemBuilder: (context, index) {
                return LocationCardFle(
                    locations[index], delete(locations[index]));
              }) /*Column(
            children: [
              Center(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  child: Text("Counter $counter"),
                ),
              ),

            ],
          )*/
          ,
        ));
  }

  VoidCallback delete(WorldTime wt) {
    return () => setState(() {
          print(wt.location);
        });
  }
}
