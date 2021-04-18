import 'dart:convert';
import 'dart:convert';
import 'package:http/http.dart';
import 'dart:core';
import 'package:intl/intl.dart';
class WorldTime {
  String location;
  String time;
  String flag;
  String url;
  bool isDaytime;

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {

    try {
      Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);
      print(datetime);
      DateTime currentTime = DateTime.parse(datetime);
      print(currentTime);
      currentTime = currentTime.add(Duration(hours: int.parse(offset)));
      isDaytime = currentTime.hour > 6 && currentTime.hour < 20 ? true : false;
      time = DateFormat.jm().format(currentTime);

    }
    catch (e) {
      print('Error caught: $e');
    }
  }
}