// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

void main() {
//Interpolação de string
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
              text: nome, //string nome
              style: TextStyle(
                color: Colors.blue,
                backgroundColor: Colors.green,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationStyle: TextDecorationStyle.double,
              ),
            ),
            TextSpan(
              text: "\nHoje é quinta-feira!",
              style: TextStyle(
                color: Colors.green,
                backgroundColor: Colors.yellow,
                decorationStyle: TextDecorationStyle.double,
              ),
            ),
            TextSpan(
              text: ' ! \nBom dia!',
              style: TextStyle(
                color: Colors.green,
                backgroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
