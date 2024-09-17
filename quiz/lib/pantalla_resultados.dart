import 'package:flutter/material.dart';
import 'package:quiz/resumen_preguntas.dart';
import 'data/preguntas.dart';

class PantallaResultados extends StatelessWidget {
  const PantallaResultados({super.key, required this.respuestasElegidas});

  final List<String> respuestasElegidas;

  List<Map<String, Object>> obtenerResumenInformacion() {
    final List<Map<String, Object>> resumen = [];

    for (var i = 0; i < respuestasElegidas.length; i++) {
      resumen.add(
        {
          'indice_pregunta': i,
          'pregunta': preguntas[i].pregunta,
          'respuesta_correcta': preguntas[i].respuestas[0],
          'respuesta_usuario': respuestasElegidas[i]
        },
      );
    }

    return resumen;
  }

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Rspondiste X de Y respuestas correctas"),
            const SizedBox(
              height: 30,
            ),
            ResumenPreguntas(resumen: obtenerResumenInformacion()),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              label: const Text('Reiniciar cuestionario'),
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
      ),
    );
  }
}
