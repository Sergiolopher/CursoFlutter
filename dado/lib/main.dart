import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 1, 165, 186),
              Color.fromARGB(255, 17, 104, 115),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const Center(
          child: Text(
            'Hola Mundo',
            style: TextStyle(
                fontFamily: "Comic Sans MS", fontSize: 28, color: Colors.white),
          ),
        ),
      ),
    ),
  ));
}
