import 'package:flutter/material.dart';

class FormatoTexto extends StatelessWidget {
  const FormatoTexto({super.key});

  @override
  Widget build(context) {
    return const Text(
      'Hola Mundo',
      style: TextStyle(
          fontFamily: "Comic Sans MS", fontSize: 28, color: Colors.white),
    );
  }
}
