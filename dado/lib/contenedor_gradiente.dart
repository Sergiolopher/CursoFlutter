import 'package:flutter/material.dart';
import 'formato_texto.dart';

class ContenedorGradiente extends StatelessWidget {
  const ContenedorGradiente({super.key});
  @override
  Widget build(context) {
    return Container(
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
        child: FormatoTexto(),
      ),
    );
  }
}
