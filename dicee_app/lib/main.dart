import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: DiceApp()));
}

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftNum = 1;
  int rightNum = 1;

  void updateDiceFace() {
    setState(() {
      leftNum = Random().nextInt(6) + 1;
      rightNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            'Dice',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.amber),
          ),
        ),
        backgroundColor: Colors.green[50],
      ),
      backgroundColor: Colors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: updateDiceFace,
                  child: Image.asset('images/dice$leftNum.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: updateDiceFace,
                  child: Image.asset('images/dice$rightNum.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
