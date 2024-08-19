import 'package:flutter/material.dart';
import 'contenedor_gradiente.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: ContenedorGradiente([
        Color.fromARGB(255, 1, 165, 186),
        Color.fromARGB(255, 17, 104, 115),
      ]),
    ),
  ));
}
