import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.black.withOpacity(0.2),
            title: Text('Ask Me Anything'),
          ),
          body: Magic8Ball(),
        ),
      ),
    );

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int ballnum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
        // ignore: deprecated_member_use
        child: FlatButton(
          onPressed: (){
            print('Magic Ball Pressed');
            setState(() {
              ballnum = Random().nextInt(5)+1;
            });
          },
          child: Image.asset('images/ball$ballnum.png'),),
    );
  }
}

