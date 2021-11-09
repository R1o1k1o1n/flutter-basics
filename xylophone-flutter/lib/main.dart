import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buttonClass({Color color, int soundNumber}){
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color
        ),
        onPressed: () {
          playSound(soundNumber);
          print('$soundNumber got pressed');
        },
        //child: Text('Click Me'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //mainAxisSize: MainAxisSize.min,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonClass(color:Colors.red,soundNumber: 1),
              buttonClass(color:Colors.yellow,soundNumber: 2),
              buttonClass(color:Colors.blue,soundNumber: 3),
              buttonClass(color:Colors.green,soundNumber: 4),
              buttonClass(color:Colors.indigo,soundNumber: 5),
              buttonClass(color:Colors.teal,soundNumber: 6),
              buttonClass(color:Colors.purple,soundNumber: 7),

            ],
          ),
        ),
      ),
    );
  }
}
