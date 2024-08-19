import 'package:flutter/material.dart';
import 'dart:math';

var random = Random();

class Dado extends StatefulWidget {
  const Dado({super.key});

  @override
  State<Dado> createState() {
    return _DadoState();
  }
}

class _DadoState extends State<Dado> {
  String caraDado = 'imagenes/dice-1.png';

  void tirarDado() {
    var numero = random.nextInt(6) + 1;
    setState(() => caraDado = 'imagenes/dice-$numero.png');
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(caraDado, width: 200),
        ElevatedButton(
          onPressed: tirarDado,
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(Colors.amberAccent),
            textStyle: WidgetStateProperty.all<TextStyle>(const TextStyle(
              fontSize: 28,
              color: Colors.black,
            )),
          ),
          child: const Text(
            'Tirar el dado',
          ),
        ),
      ],
    );
  }
}
