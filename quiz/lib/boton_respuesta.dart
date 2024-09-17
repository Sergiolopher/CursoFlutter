import 'package:flutter/material.dart';

class BotonRespuesta extends StatelessWidget {
  const BotonRespuesta({
    required this.respuestaTexto,
    required this.onTap,
    super.key,
  });

  final String respuestaTexto;
  final void Function() onTap;

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 78, 21, 148),
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 40,
          ),
        ),
        child: Text(
          respuestaTexto,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
