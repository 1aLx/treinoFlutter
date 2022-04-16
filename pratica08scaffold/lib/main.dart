import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: Home()));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('Home', textDirection: TextDirection.ltr,),
      ),
      body: const Text(
          'Teste',
          //Adicionando um estilo para a fonte.
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
      ),
      //Adicionando uma cor azul ao corpo.
      backgroundColor: Colors.blue[900],
      //Adicionando um botão de adição sem função.
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'Exemplo de botão',
        child: Icon(Icons.add),
      ),
      //Centralizando o botão.
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}