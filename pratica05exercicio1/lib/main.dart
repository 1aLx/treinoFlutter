
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget> [
      const Expanded(
        child: FittedBox(
          fit: BoxFit.contain,
          child: FlutterLogo(),
        ),
      ),
      Expanded(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Image.network(
          'https://i.picsum.photos/id/9/250/250.jpg?hmac=tqDH5wEWHDN76mBIWEPzg1in6egMl49qZeguSaH9_VI'
          ),
        ),
      ),

      //Utilizar RichText dentro de Expanded pois somente Text() estava com erro.

      Expanded(
          child: RichText(
            textDirection: TextDirection.ltr,
            text: const TextSpan(
              text: "Google Flutter",
              style: TextStyle(
                color: Colors.blue,
                backgroundColor: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
        ),
      ),
    ],
  ));
}
