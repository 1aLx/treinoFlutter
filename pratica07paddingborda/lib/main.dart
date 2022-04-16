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
        //Aplicando padding a todas as bordas do Container.
        padding: const EdgeInsets.all(15.0),
        width: 200.0,
        height: 100.0,
        margin: const EdgeInsets.all(10.0),
      ),
    ),
  );
}
