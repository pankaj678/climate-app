import 'package:climate/loading_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'location_screen.dart';
class CityScreen extends StatefulWidget {
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  final userInput=TextEditingController();
  @override
  void dispose() {
   userInput.dispose();
    super.dispose();
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
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: userInput,
                ),
              ),
              FlatButton(
                onPressed: (){
                  if(userInput==null){
                    AlertDialog(content: Text('enter city'),);
                  }
                  else {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) {
                      return LoadingScreen(city: userInput.text);
                    }
                    ),
                    );
                  }
                },
                child: Text('Get Weather',style: TextStyle(fontSize: 18),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
