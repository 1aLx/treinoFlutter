import 'package:flutter/material.dart';

//Alinhando colunas ao centro do app.
void main() {
  runApp(
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Text(
          "Olá, mundo!",
          textDirection: TextDirection.ltr,
        ),
        Text(
          'Este aplicativo usa o widget Column!',
          textDirection: TextDirection.ltr,
        ),
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain,
            child: FlutterLogo(),
          ),
        ),
      ],
    ),
  );
}
