import 'package:flutter/material.dart';

class ResumenPreguntas extends StatelessWidget {
  const ResumenPreguntas({super.key, required this.resumen});

  final List<Map<String, Object>> resumen;

  @override
  Widget build(context) {
    return Column(
      children: resumen
          .map((item) => Row(
                children: [
                  Text(((item['indice_pregunta'] as int) + 1).toString()),
                  Expanded(
                    child: Column(
                      children: [
                        Text(item['pregunta'].toString()),
                        Text(item['respuesta_usuario'].toString()),
                        Text(item['respuesta_correcta'].toString()),
                      ],
                    ),
                  ),
                ],
              ))
          .toList(),
    );
  }
}
