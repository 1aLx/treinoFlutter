import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Container(
        child: const Text(
          'Flutter',
          textDirection: TextDirection.ltr,
        ),
        color: Colors.blue,
        padding: const EdgeInsets.fromLTRB(45.0, 20.0, 25.0, 20.0), //left, top, right, bottom.
        width: 200.0,
        height: 100.0,
        margin: const EdgeInsets.only(left: 100.0), //Levando o container para a esquerda.
      ),
    ),
  );
}