import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Container(
        child: const Text(
          'Flutter',
          textDirection: TextDirection.ltr,
        ),
        //Transformando o container em um circulo.
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
        ),
        //Dimensões do circulo.
        padding: const EdgeInsets.all(40.0),
        margin: const EdgeInsets.all(25.0),
      ),
    ),
  );
}
