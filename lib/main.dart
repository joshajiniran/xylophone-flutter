import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Widget buildKey({int num, String text, Color col}) {
    return Expanded(
      child: FlatButton(
        child: Text(text),
        color: col,
        onPressed: () {
          playSound(num);
        },
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
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(num:1, text:'doh', col: Colors.blue),
              buildKey(num:2, text:'reh', col: Colors.red),
              buildKey(num:3, text:'meh', col: Colors.yellow),
              buildKey(num:4, text:'fah', col: Colors.green),
              buildKey(num:5, text:'soh', col: Colors.white),
              buildKey(num:6, text:'lah', col: Colors.purple),
              buildKey(num:7, text:'teh', col: Colors.indigo),
            ],
          ),
        ),
      ),
    );
  }
}
