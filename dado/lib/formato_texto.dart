import 'package:flutter/material.dart';

class FormatoTexto extends StatelessWidget {
  const FormatoTexto(this.texto, {super.key});

  final String texto;

  @override
  Widget build(context) {
    return Text(
      texto,
      style: const TextStyle(
          fontFamily: "Comic Sans MS", fontSize: 28, color: Colors.white),
    );
  }
}
