import 'package:flutter/material.dart';
import 'formato_texto.dart';
import 'dado.dart';

const alineacionInicial = Alignment.topLeft;
const alineacionFinal = Alignment.bottomRight;

class ContenedorGradiente extends StatelessWidget {
  const ContenedorGradiente(this.colores, {super.key});

  final List<Color> colores;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colores,
          begin: alineacionInicial,
          end: alineacionFinal,
        ),
      ),
      child: const Center(
        child: Dado(),
      ),
    );
  }
}
