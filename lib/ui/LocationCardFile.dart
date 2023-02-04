import 'package:flutter/material.dart';
import 'package:flutterr/world_time/WorldTime.dart';

class LocationCardFle extends StatefulWidget {
  WorldTime locations;
  VoidCallback? callBack;

  LocationCardFle(this.locations, this.callBack, {Key? key}) : super(key: key);

  @override
  State<LocationCardFle> createState() => _LocationCardFleState();
}

class _LocationCardFleState extends State<LocationCardFle> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(widget.locations.location),
          ),
          const SizedBox(
            height: 10.0,
          ),
          TextButton.icon(
              onPressed: widget.callBack,
              icon: const Icon(Icons.delete),
              label: const Text("delete"))
        ],
      ),
    );
  }
}
