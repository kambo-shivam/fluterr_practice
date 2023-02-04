import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {
  String? time;

  String location;

  WorldTime(this.location);

  Future<String> getData() async {
    try {
      Response response = await http
          .get(Uri.parse('http://worldtimeapi.org/api/timezone/$location'));
      Map map = jsonDecode(response.body);
      String date = map['datetime'];
      String utcOffSet = map['utc_offset'];
      DateTime dateTime = DateTime.parse(date);
      time = DateFormat.jm().format(dateTime);
      //time = dateTime.toString();
    } catch (e) {
      print("catch exception $e");
      time = "Could not fetch data";
    }
    return time.toString();
  }
}
