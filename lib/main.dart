import 'package:flutter/material.dart';
import 'dart:math';
//import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 48, 106, 240),
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Color.fromARGB(255, 48, 106, 240),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  late AudioCache audioCache; // For preloading
  late AudioPlayer audioPlayer; // For playing

  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  void initState() {
    super.initState();
    audioCache = AudioCache();
    audioPlayer = AudioPlayer();
    audioCache.load('audio/dice.wav'); // Preload the audio file
  }

  void rollDice() async {
    setState(() {
      leftDiceNumber = 1 + Random().nextInt(6);
      rightDiceNumber = 1 + Random().nextInt(6);
    });

    // Play the preloaded audio
    await audioPlayer.play('audio/dice.wav' as Source);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: rollDice,
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: rollDice,
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
