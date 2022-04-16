//Informar se o número é par ou ímpar.

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: Home()));

class Home extends StatefulWidget {
  const Home ({Key? key}) : super(key: key);

  @override
  HomeState createState(){
    return HomeState();
  }
}

class HomeState extends State<Home>{
  int numeroVezes = 0;
  String mensagem = "Número de vezes em que o botão foi pressionado: 0. \nEsse número é par!";

  void cliqueDoBotao() {
    numeroVezes += 1;
    //? == if(){} /  : == else {}
    mensagem = "Número de vezes em que o botão foi pressionado: $numeroVezes.\nEsse número é: ${numeroVezes % 2 == 0 ? "par" : "ímpar"}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Página Inicial",
        style: TextStyle(
          color: Colors.blueGrey,
          fontWeight: FontWeight.bold,
          fontSize: 15,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(mensagem,
            style: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 17,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(cliqueDoBotao);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}