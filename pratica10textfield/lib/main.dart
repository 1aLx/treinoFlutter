import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home : Home()));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const  Text("Página Inicial"),
      ),
      body: Column(
        children: const [
          Text('Informe seu nome:'),
          TextField(),
        ],
      ),
    );
  }
}