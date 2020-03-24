import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MagicBall());

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {

  int ballNumber = 1;

  void gantiBola(){
    setState(() {
      ballNumber = Random().nextInt(5)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text(
            'Ask Me Anytime',
            style: TextStyle(
              color: Colors.white
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: FlatButton(
            onPressed: (){
              gantiBola();
            },
            child: Image.asset('images/ball$ballNumber.png'),
          ),
        ),
      ),
    );
  }
}


