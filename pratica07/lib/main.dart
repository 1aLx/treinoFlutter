import 'package:flutter/material.dart';

//Limitando as dimensões do Container() aplicando uma configuração para largura, altura e margem.

void main() {
  runApp(
    Center(
      child: Container(
        child: const Text(
          'Flutter',
          textDirection: TextDirection.ltr,
        ),
        color: Colors.lightBlue,
        alignment: Alignment.center,
        width: 200.00,
        height: 100.00,
        margin: const EdgeInsets.all(10.0),
      ),
    ),
  );
}