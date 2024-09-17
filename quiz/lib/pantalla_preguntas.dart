import 'package:flutter/material.dart';
import 'package:quiz/data/preguntas.dart';
import 'boton_respuesta.dart';
import 'package:google_fonts/google_fonts.dart';

class PantallaPreguntas extends StatefulWidget {
  const PantallaPreguntas({super.key, required this.alSeleccionarRespuesta});

  final void Function(String respuesta) alSeleccionarRespuesta;

  @override
  State<PantallaPreguntas> createState() {
    return _PantallaPreguntasState();
  }
}

class _PantallaPreguntasState extends State<PantallaPreguntas> {
  var indicePreguntaActual = 0;

  void responderPregunta(String respuestaSeleccionada) {
    widget.alSeleccionarRespuesta(respuestaSeleccionada);
    if (indicePreguntaActual < preguntas.length - 1) {
      setState(() {
        indicePreguntaActual++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final preguntaActual = preguntas[indicePreguntaActual];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              preguntaActual.pregunta,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 219, 165, 236),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ...preguntaActual.revolverRespuestas().map((item) {
              return BotonRespuesta(
                respuestaTexto: item,
                onTap: () {
                  responderPregunta(item);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
