import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          'Aask Me Anything'
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Ball(
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Image(
          image: AssetImage('images/ball1.png'),
        ),
        onPressed: () {
          print(Random().nextInt(5));
        },
      ),
    );
  }
}
