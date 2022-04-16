import 'package:flutter/material.dart';

void main() {
  runApp(
    Row(
      textDirection: TextDirection.ltr,
      children: <Widget>[
        const Expanded(
          child: FittedBox(
            fit: BoxFit.contain,
            child: FlutterLogo(),
          ),
        ),
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain,
            child: Image.network('https://picsum.photos/250?image=9'),
          ),
        ),
        const Expanded(
          child: Text(
            "Olá mundo! Este é meu primeiro aplicativo usando o widget ROW. O widget row dispõe seus filhos em linhas.",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.blueAccent,
              backgroundColor: Colors.black,
              fontFamily: 'RobotoMono',
              fontWeight: FontWeight.w400,
              fontSize: 23,
            ),
          ),
        ),
      ],
    ),
  );
}
