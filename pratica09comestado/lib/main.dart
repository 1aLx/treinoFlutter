import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: Home()));

//Para ocorrer uma alteração precisamos criar uma classe que extende a StatefulWidget.

/*
*  Para conseguirmos implemtar a mudança de estado, primeiro temos que converter a classe que extende
*  StatelessWidget em uma classe de estado. Essa classe será responsável por determinar o estado do
*  Widget e terá que extender a classe State.
*  OBS: usar o metodo setState() para alterar o estado interno do objeto da classe State. O método
*  que incrementa o valor da variavel, cliqueDoBotao(), promove a alteração de estado. Então, passa
*  esse método como parâmetro de setState().
*/

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  int numeroVezes = 0;

  void cliqueDoBotao() {
   numeroVezes += 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Página Inicial",
          style: TextStyle(
          color: Colors.deepOrange,
          fontWeight: FontWeight.bold,
          fontSize: 20,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Número de vezes em que o botão foi pressionado: $numeroVezes",
            style: const TextStyle(
              color: Colors.black26,
              fontWeight: FontWeight.bold,
              fontSize: 30,
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