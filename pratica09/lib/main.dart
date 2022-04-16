import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(home: PaginaInicial()));
}

class PaginaInicial extends StatefulWidget{
  const PaginaInicial({Key? key}) : super(key: key);

  @override
  PaginaInicialState  createState(){
    return PaginaInicialState();
  }
}

class PaginaInicialState extends State<PaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home page'),),
    );
  }
}