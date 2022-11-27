import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(body: Xylophone()),
    ),
  );
}

class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Buttons(song: 'note1.wav', color: Colors.red),
          Buttons(song: 'note2.wav', color: Colors.blue),
          Buttons(song: 'note3.wav', color: Colors.greenAccent),
          Buttons(song: 'note4.wav', color: Colors.yellow),
          Buttons(song: 'note5.wav', color: Colors.orange),
          Buttons(song: 'note6.wav', color: Colors.purple),
          Buttons(song: 'note7.wav', color: Colors.pink),
        ],
      ),
    );
  }

  Widget Buttons({required String song, required Color color}) {
    return Expanded(
      flex: 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: color),
        onPressed: () {
          AudioPlayer().play(AssetSource(song));
        },
        child: Text(""),
      ),
    );
  }
}
