import 'package:flutter/material.dart';

//Aplicando uma restrição de largura.

void main(){
  runApp(Center(
    child: Container(
      child: const Text(
        'Flutter',
        textDirection: TextDirection.ltr,
      ),
      color: Colors.blue,
      alignment: Alignment.center,
      constraints: const BoxConstraints.tightForFinite(
        width: 200,
      ),
    ),
  ),);
}