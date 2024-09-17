import 'package:flutter/material.dart';
import 'package:quiz/pantalla_preguntas.dart';
import 'pantalla_inicial.dart';
import 'data/preguntas.dart';
import 'pantalla_resultados.dart';

class Cuestionario extends StatefulWidget {
  const Cuestionario({super.key});

  @override
  State<Cuestionario> createState() {
    return _CuestionarioState();
  }
}

class _CuestionarioState extends State<Cuestionario> {
  final List<String> respuestas = [];
  Widget? pantallaActiva;

  @override
  void initState() {
    pantallaActiva = PantallaInicial(cambiarPantalla);
    super.initState();
  }

  void cambiarPantalla() {
    setState(() => pantallaActiva =
        PantallaPreguntas(alSeleccionarRespuesta: responderPregunta));
  }

  void responderPregunta(String respuesta) {
    respuestas.add(respuesta);

    if (respuestas.length == preguntas.length) {
      setState(() {
        pantallaActiva = PantallaResultados(
          respuestasElegidas: respuestas,
        );
      });
    }
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 55, 14, 125),
                Color.fromARGB(255, 88, 15, 125)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: pantallaActiva,
        ),
      ),
    );
  }
}
