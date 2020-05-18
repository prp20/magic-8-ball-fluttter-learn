import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lightBlue,
          appBar:AppBar(
            backgroundColor: Colors.blue.shade900,
            title: Center(child: Text('Ask Me Anything')),
          ),
          body: askMeAnyThing(),
        ),
      ),
    );
class askMeAnyThing extends StatefulWidget {
  @override
  _askMeAnyThingState createState() => _askMeAnyThingState();
}

class _askMeAnyThingState extends State<askMeAnyThing> {
  @override
  int imageNumber = 1;
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child:FlatButton(
              onPressed: (){
                setState(() {
                  imageNumber = Random().nextInt(4) + 1;
                });
              },
              child: Image.asset('images/ball$imageNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

