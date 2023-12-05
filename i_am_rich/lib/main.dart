import 'package:flutter/material.dart';

void main() {
  runApp(const IAmRich());
}

class IAmRich extends StatelessWidget {
  const IAmRich({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I am Rich',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: const Center(
            child: Text(
              'I\'m Rich',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: const Center(
          child: Image(
            image: AssetImage('images/diamond.png'),
          ),
        ),
      ),
    );
  }
}
