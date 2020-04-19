import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  int playSound(int i) {}

  Expanded createKey({Color c, int soundNum}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          final player = AudioCache();
          player.play("note$soundNum.wav");
          print("sound played");
        },
        color: c,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(
              child: Text(
            "Xylophone app",
            style: TextStyle(color: Colors.green),
          )),
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              createKey(c: Colors.red, soundNum: 1),
              createKey(c: Colors.orange, soundNum: 2),
              createKey(c: Colors.yellow, soundNum: 3),
              createKey(c: Colors.green, soundNum: 4),
              createKey(c: Colors.teal, soundNum: 5),
              createKey(c: Colors.blue, soundNum: 6),
              createKey(c: Colors.purple, soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
