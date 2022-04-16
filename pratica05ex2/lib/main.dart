import 'package:flutter/material.dart';

void main() {
  runApp(
    Column(
      textDirection: TextDirection.ltr,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: const <Widget>[
        Text(
          'Neste exemplo, crossAxisAligment é definido',
          textDirection: TextDirection.ltr,
        ),
        Text(
          'como CrossAligment.start para que os ',
          textDirection: TextDirection.ltr,
        ),
        Text(
          'filhos sejam alinhados à esquerda. O mainAxisSize ',
          textDirection: TextDirection.ltr,
        ),
        Text(
          'é definido como MianAxisSize.min, para que a coluna ',
          textDirection: TextDirection.ltr,
        ),
        Text(
          'seja reduzida para caber os filhos.',
          textDirection: TextDirection.ltr,
        ),
        Text(
          'Google Flutter.',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.white,
          ),
        ),
      ],
    ),
  );
}
