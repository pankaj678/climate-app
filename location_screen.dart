import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'location.dart';
import 'city_screen.dart';
class LocationScreen extends StatefulWidget {
  LocationScreen({this.information});

  final information;

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  var temp;
  String city;
  String description;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData(widget.information);
  }

  void getData(dynamic weather){
    print(weather);
    temp=weather['main']['temp'];
    temp=temp.toInt();
    city=weather['name'];
    description=weather['weather'][0]['description'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/Toronto.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          minimum:EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.edit_location,
                      size: 50,
                    ),
                  ),
                  Text('Change City',style: TextStyle(fontSize: 30),),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('$temp°C',
                      style: TextStyle(fontSize: 80,color: Colors.yellow),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text('$description',
                style: TextStyle(fontSize: 40,color: Colors.yellow),
                ),

              ),
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  '$city',
                  style: TextStyle(fontSize: 40),
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
