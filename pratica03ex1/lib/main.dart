// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';

void main() {
  const nome = "Alexandre!";

  runApp(
    Center(
      child: RichText(
        textDirection: TextDirection.ltr,
        text: const TextSpan(
          text: "Olá, ",
          style: TextStyle(
            color: Colors.green,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.white,
          ),
          children: <TextSpan>[
            TextSpan(
              text: nome,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
            TextSpan(
              text: "\nHoje é quinta-feira!",
              style: TextStyle(
                color: Colors.red,
                backgroundColor: Colors.green,
              ),
            ),
            TextSpan(
              text: '\nBom dia!',
              style: TextStyle(
                color: Colors.green,
                backgroundColor: Colors.white,
              ),
            ),
            TextSpan(
              text:
                  "\nHoje, você tera que escrever um aplicativo em flutter. O aplicativo deve imprimir um texto na tela. O texto possui trechos com estilos diferentes.",
              style: TextStyle(
                color: Colors.white,
                backgroundColor: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}