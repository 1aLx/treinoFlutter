/*
* Agora irei apresentar o nome informado. Como há uma alteração de estado do widget,
* precisamos usar o método setState() quando o botão é pressionado. O método setState()
* recebe o método cumprimentar() como parâmetro. O método cumprimentar() gera um string
* para apresentar na tela.
*/


import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home : Home()));

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
        title: const Text('Página inicial'),
      ),

      body: Column(
        children: [

          const Text('Informe seu nome: '),

          TextField(
            controller: nomeController,
            //decoration não leva o argumento const consigo.
            decoration: InputDecoration(
              icon: const Icon(Icons.chat),
              prefixIcon: const Icon(Icons.account_box),
              //Icone na direita de DECORATION com a função de apagar o texto escrito.
              suffixIcon: IconButton(
                onPressed: () => nomeController.clear(),
                icon: const Icon(Icons.clear),
              ),
              //Ao clicar em DECORATION o texto 'NOME' irá para a borda.
              border: const OutlineInputBorder(),
              labelText: 'nome',
            ),
          ),

          //Botão em baixo de DECORATION.
          ElevatedButton(
            onPressed: () => print("Nome informado: ${nomeController.text}"),
            child: const Text(
              'Enviar',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),

        ],
      ),
    );
  }
}