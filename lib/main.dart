import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Image(
          image: AssetImage('images/ball1.png'),
        ),
        onPressed: () {
          print('I got clicked');
        },
      ),
    );
  }
}
