import 'package:flutter/material.dart';

//Adicionando uma imagem ao circulo.

void main() {
  runApp(
    Center(
      child: Container(
        child: Expanded(
          child: FittedBox(
            fit: BoxFit.contain,
            child: Image.network('https://images.unsplash.com/photo-1547721064-da6cfb341d50'),
          )
        ),
          decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.green,
        ),
        padding: const EdgeInsets.all(100),
        margin: const EdgeInsets.all(1),
      ),
    ),
  );
}