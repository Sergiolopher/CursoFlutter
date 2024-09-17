import 'package:flutter/material.dart';

class PantallaInicial extends StatelessWidget {
  const PantallaInicial(this.cambiarPantalla, {super.key});

  final void Function() cambiarPantalla;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            height: 300,
            color: const Color.fromARGB(100, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            '¡Aprende flutter de manera divertida!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 56, 2, 93),
            ),
            onPressed: cambiarPantalla,
            icon: const Icon(
              Icons.assessment_outlined,
              color: Colors.white,
            ),
            label: const Text(
              'Empezar cuestionario',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
