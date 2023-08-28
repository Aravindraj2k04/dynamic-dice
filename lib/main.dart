import 'package:flutter/material.dart';
import 'dart:math';  
//import 'package:audioplayers/audioplayers.dart'; // Importing the audio.dart file

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
  // Creating an object of AudioCache class
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void rollDice() {
    setState(() {
      // Playing the audio file
      leftDiceNumber = 1 + Random().nextInt(6);
      rightDiceNumber = 1 + Random().nextInt(6);
    });
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
