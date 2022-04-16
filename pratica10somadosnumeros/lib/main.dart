import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home : Home()));


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState(){
    return HomeState();
  }
}

class HomeState extends State<Home>{

  TextEditingController num01Controller = TextEditingController();
  TextEditingController num02Controller = TextEditingController();

  String resp = "";

  somar () {

    //tryParse tenta passar mas não consegue.
    int? num01 = int.tryParse(num01Controller.text);
    int? num02 = int.tryParse(num02Controller.text);
    int soma = num01! + num02!;
    resp = '$num01 + $num02 = $soma';
    return resp;

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text('Página incial'),
      ),

      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: TextField(
              controller: num01Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num01Controller.clear(),
                  icon: const Icon(Icons.clear),
                ),

                //Adicionando uma borda com raio em suas pontas e o texto que está escrito sobre para a borda.
                border: const OutlineInputBorder(),
                labelText: 'Informe o primeiro número',

              ),
            ),
          ),

          //Adicionando um segundo Container para o segundo número.
          Container(
            margin: const EdgeInsets.all(10),
            child: TextField(
              controller: num02Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num02Controller.clear(),
                  icon: const Icon(Icons.clear),
                ),

                //Adicionando uma borda com raio em suas pontas e o texto que está escrito sobre para a borda.
                border: const OutlineInputBorder(),
                labelText: 'Informe o segundo número',

              ),
            ),
          ),
          //Atribuindo a função somar em um botão para fazer a soma.
          ElevatedButton(onPressed: () {
            print(somar());
            setState(somar);
          },

            child: const Text(
              'Somar',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),

          Text(
            resp,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}