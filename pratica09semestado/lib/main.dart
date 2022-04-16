// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  int numeroVezes = 0;

  void cliqueBotao() {
    numeroVezes += 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Número de vezes em que o botão for pressionado: $numeroVezes"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: cliqueBotao,
        child: const Icon(Icons.add),
      ),
    );
  }
}