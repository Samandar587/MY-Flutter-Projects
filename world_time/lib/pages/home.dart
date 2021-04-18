import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;

    String bgImage = data['isDaytime'] ? 'day.png' : 'night.png';
    Color bgColor = data['isDaytime'] ? Colors.blue : Colors.indigo;

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bgImage'),
              fit: BoxFit.cover,
            ),
          ),
       child: Padding(
         padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
         child: Column(
           children: [
             FlatButton.icon(
               onPressed: () async{
                 dynamic result = await Navigator.pushNamed(context, '/location');
                 setState(() {
                   data = {
                     'time': result['time'],
                     'location': result['location'],
                     'flag': result['flag'],
                     'isDaytime': result['isDaytime'],
                   };
                 });
               },
               icon: Icon(
                   Icons.edit_location,
                 color: Colors.grey[200],
               ),
               label: Text('Edit location', style: TextStyle(color: Colors.grey[200]),),
             ),
             SizedBox(height: 15,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text(
                   data['location'],
                   style: TextStyle(
                     fontSize: 30,
                     letterSpacing: 3,
                     color: Colors.grey[200],
                   ),
                 )
               ],
             ),
             SizedBox(height: 20,),
               Text(
                 data['time'],
                 style: TextStyle(
                   fontSize: 70,
                   color: Colors.grey[200],
                 ),
               ),
           ],
            ),
          ),
        ),
      ),
    );
  }
}
