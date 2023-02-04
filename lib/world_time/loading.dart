import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutterr/world_time/WorldTime.dart';
import 'package:intl/intl.dart';

class Loading extends StatefulWidget {
  String? time;

  Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    getTime();
    super.initState();
  }

  getTime() async {
    WorldTime worldTime = WorldTime("Europe/London");
    widget.time = await worldTime.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        centerTitle: true,
        title: Text("Loading..."),
        backgroundColor: Colors.yellow,
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SpinKitFadingCircle(
              color: Colors.cyan,
              size: 40.0,
            ),
          ),
          Text(checkForNull())
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: Text(
          "+",
          style: TextStyle(color: Colors.black, fontSize: 40.0),
        ),
        onPressed: () {
          setState(() {
            Navigator.pushReplacementNamed(context, '/home',
                arguments: {'time': widget.time});
          });
          //Navigator.pushNamed(context, '/location');
        },
        backgroundColor: Colors.white70,
      ),
    );
  }

  String checkForNull() {
    return (widget.time ?? "");
  }
}

/*
* leading: IconButton(
            icon: Icon(Icons.access_alarms),
            onPressed: () {
              Navigator.pushNamed(context, '/location');
            }),*/
