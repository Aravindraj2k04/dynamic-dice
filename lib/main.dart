import 'package:flutter/material.dart';

void main() {
  return runApp(
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

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return dicestate();
  }
}
class dicestate extends StatefulWidget {
  const dicestate({super.key});

  @override
  State<dicestate> createState() => _dicestateState();
}

class _dicestateState extends State<dicestate> {
  @override
  Widget build(BuildContext context) {
    var leftDi = 1;
    return Center(
      child: Column(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
              
                setState(() {
                  leftDi ++;
                }
                );
                print('Left button got pressed.');
              },
              child: Image.asset('images/dice$leftDi.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDi ++;
                });
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
