import 'package:flutter/material.dart';

void main(){
  runApp(
    Center(
      child: Container(
        child: const Text(
          'Flutter',
          textDirection: TextDirection.ltr,
        ),
        color: Colors.blue,
        alignment: Alignment.center,
        width: 200.00,
        height: 100.00,
        margin: const EdgeInsets.all(10.0),
        transform: Matrix4.rotationZ(0.35),
      ),
    ),
  );
}