import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftDi = 5;
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Left button got pressed.');
              },
              child: Image.asset('images/dice$leftDi.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Right button got pressed.');
              },
              child: Image.asset('images/dice$leftDi.png'),
            ),
          ),
        ],
      ),
    );
  }
}
