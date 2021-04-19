import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Stack(
        children: [
          Container(
            height: size.height * .3,
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
              children: [
                Container(
                  height: 64,
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 32,
                       backgroundImage: NetworkImage('https://cdn4.iconfinder.com/data/icons/professions-1-2/151/8-512.png'),
                      ),
                      SizedBox(width: 16.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Aziz Azizov',
                            style: TextStyle(
                              color: Colors.black26,
                              fontSize: 20,
                              letterSpacing: 3.0,
                            ),
                          ),
                          Text(
                              'ID: U191000001',
                            style: TextStyle(
                            color: Colors.black26,
                            fontSize: 14,
                          ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                child: GridView.count(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  primary: false,
                  crossAxisCount: 2,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      elevation: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.network('http://image.flaticon.com/icons/svg/1904/1904425.svg', height: 128,),
                          Text(
                            'Personal Data',
                            style: TextStyle(
                              fontSize: 14,
                                color: Color.fromRGBO(63, 63, 63, 1)),),
                        ],
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      elevation: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.network('http://image.flaticon.com/icons/svg/1904/1904565.svg', height: 128,),
                          Text(
                            'Course Schedule',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(63, 63, 63, 1)),),
                        ],
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      elevation: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.network('http://image.flaticon.com/icons/svg/1904/1904527.svg', height: 128,),
                          Text(
                            'Attendance Recap',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(63, 63, 63, 1)),),
                        ],
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      elevation: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.network('http://image.flaticon.com/icons/svg/1904/1904437.svg', height: 128,),
                          Text(
                            'Study Schedule',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(63, 63, 63, 1)),),
                        ],
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      elevation: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.network('http://image.flaticon.com/icons/svg/1904/1904235.svg', height: 128,),
                          Text(
                            'Course Booking',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(63, 63, 63, 1)),),
                        ],
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      elevation: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.network('http://image.flaticon.com/icons/svg/1904/1904221.svg', height: 128,),
                          Text(
                            'Course Plan',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(63, 63, 63, 1)),),
                        ],
                      ),
                    ),
                  ],
                ),
                ),
              ],
          ),
            ),
          ),
        ],
      ),
    );
  }
}
