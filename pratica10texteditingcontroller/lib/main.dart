

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: Home()));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState(){
    return HomeState();
  }
}

class HomeState extends State<Home> {

  //Associar um controlador TextEditingController ao atributo controller do campo de texto criado.
  TextEditingController nomeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página inicial'),
      ),
      body: Column(
        children: [
          const Text('Informe seu nome: '),
          TextField(
            controller: nomeController,
          ),
        ],
      ),
    );
  }
}