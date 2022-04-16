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
  TextEditingController nomeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Inicial'),
      ),
      body: Column(
        children: [
          const Text('Informe seu nome:'),
          TextField(
            controller: nomeController,

            //Associando uma configuração visual ao tributo DECORATION do campo de texto criado.
            //Um ícone é apresentado dentro do campo de texto à esquerda.

            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.account_box),
              border: OutlineInputBorder(),
              labelText: 'nome',

            ),
          ),

          //Aqui, utilizo o ícone dentro do campo de texto à direita.
          TextField(
            controller: nomeController,
            decoration: const InputDecoration(
              suffixIcon: Icon(Icons.account_box),
              border: OutlineInputBorder(),
              labelText: 'nome',
            ),
          ),

          //Agora utilizo fora do campo texto.
          TextField(
            controller: nomeController,
            decoration: const InputDecoration(
              icon: Icon(Icons.account_box),
              border: OutlineInputBorder(),
              labelText: 'nome',
            ),
          ),
        ],
      ),
    );
  }
}