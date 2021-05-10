import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('App Title Here'),
          ),
          body: keyBoard()
          // TestApp()
          // Text('hello')
          )));
}

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('Hello from TestApp!'));
  }
}

class keyBoard extends StatefulWidget {
  @override
  _keyBoardState createState() => _keyBoardState();
}

class _keyBoardState extends State<keyBoard> {
  void playNote(String wave) {
    var player = AudioCache();
    player.play(wave);
  }

  TextButton myBtn(String wave, Color color) {
    return TextButton(
      child:Text('                                ',
          style: TextStyle(fontSize: 30.0, backgroundColor: color),
        ),
      onPressed: () {
        playNote(wave);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          myBtn('note1.wav', Colors.red),
          myBtn('note2.wav', Colors.orange),
          myBtn('note3.wav', Colors.yellow),
          myBtn('note4.wav', Colors.green),
          myBtn('note5.wav', Colors.blueGrey),
          myBtn('note6.wav', Colors.blue),
          myBtn('note7.wav', Colors.purple),
        ],
      ),
    );
  }
}

