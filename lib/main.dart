import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton(
                child: Text(''),
                color: Colors.blue,
                onPressed: () {
                  playSound(1);
                },
              ),
              FlatButton(
                child: Text(''),
                color: Colors.red,
                onPressed: () {
                  playSound(2);
                },
              ),
              FlatButton(
                child: Text(''),
                color: Colors.green,
                onPressed: () {
                  playSound(3);
                },
              ),
              FlatButton(
                child: Text(''),
                color: Colors.yellow,
                onPressed: () {
                  playSound(4);
                },
              ),
              FlatButton(
                child: Text(''),
                color: Colors.purple,
                onPressed: () {
                  playSound(5);
                },
              ),
              FlatButton(
                child: Text(''),
                color: Colors.pink,
                onPressed: () {
                  playSound(6);
                },
              ),
              FlatButton(
                child: Text(''),
                color: Colors.orange,
                onPressed: () {
                  playSound(7);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
