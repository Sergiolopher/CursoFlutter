class PreguntaCuestionario {
  final String pregunta;
  final List<String> respuestas;

  const PreguntaCuestionario(this.pregunta, this.respuestas);

  List<String> revolverRespuestas() {
    final respuestasRevueltas = List.of(respuestas);
    respuestasRevueltas.shuffle();
    return respuestasRevueltas;
  }
}
