import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void player(noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({Color color, int noteNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          player(noteNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.purple, noteNumber: 1),
              buildKey(color: Colors.indigo, noteNumber: 2),
              buildKey(color: Colors.blue, noteNumber: 3),
              buildKey(color: Colors.green[400], noteNumber: 4),
              buildKey(color: Colors.yellow, noteNumber: 5),
              buildKey(color: Colors.orange, noteNumber: 6),
              buildKey(color: Colors.red, noteNumber: 7)
            ],
          ),
        ),
      ),
    );
  }
}
