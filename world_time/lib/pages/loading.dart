import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
import 'dart:core';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading>{


  void setTime() async{
    WorldTime object = WorldTime(location: 'Tashkent', flag: 'uzb.png', url: 'Asia/Tashkent');
    await object.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments:{
      'location': object.location,
      'flag': object.flag,
      'time': object.time,
      'isDaytime': object.isDaytime,
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child: SpinKitFadingCircle(
         color: Colors.black,
         size: 50,
       ),
     ),
      );
  }
}