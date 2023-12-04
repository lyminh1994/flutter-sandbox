import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'I am Rich',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: const Center(
            child: Text(
              'I am Rich',
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
    ),
  );
}
