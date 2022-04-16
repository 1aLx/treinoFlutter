import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: Home()));


 
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {

  TextEditingController num01Controller = TextEditingController();
  TextEditingController num02Controller = TextEditingController();

  String resp = "";

  somar() {
    double? num01 = double.tryParse(num01Controller.text);
    double? num02 = double.tryParse(num02Controller.text);
    double soma = num01! + num02!;
    resp = '$num01 + $num02 = $soma';
  }

  subtrair() {
    double? num01 = double.tryParse(num01Controller.text);
    double? num02 = double.tryParse(num02Controller.text);
    double subtracao = num01! - num02!;
    resp = '$num01 + $num02 = $subtracao';
  }

  multiplicar () {
    double? num01 = double.tryParse(num01Controller.text);
    double? num02 = double.tryParse(num02Controller.text);
    double multiplicacao = num01! * num02!;
    resp = '$num01 + $num02 = $multiplicacao';
  }

  divisao () {
    double? num01 = double.tryParse(num01Controller.text);
    double? num02 = double.tryParse(num02Controller.text);
    double divisao = num01! / num02!;
    resp = '$num01 + $num02 = $divisao';
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
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

                border: const OutlineInputBorder(),
                labelText: 'Informe o primeiro número:'

              ),
            ),
          ),

          Container(
            margin: const EdgeInsets.all(10),
            child: TextField(
              controller: num02Controller,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => num02Controller.clear(),
                    icon: const Icon(Icons.clear),
                  ),

                  border: const OutlineInputBorder(),
                  labelText: 'Informe o segundo número:'

              ),
            ),
          ),

            Container(
              margin: const EdgeInsets.all(10),
              child: Center(
                child: Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(onPressed: () {
                    print(somar());
                    setState(somar);
                  },
                    child: const Text('Somar',
                      style: TextStyle(fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Container(
            margin: const EdgeInsets.all(10),
              child: Center(
                child: Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(onPressed: () {
                    print(subtrair());
                    setState(subtrair);
                },
                    child: const Text('Subtrair',
                      style: TextStyle(fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.center,
                child: ElevatedButton(onPressed: () {
                  print(multiplicar());
                  setState(multiplicar);
                },
                  child: const Text('Multiplicar',
                    style: TextStyle(fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.center,
                child: ElevatedButton(onPressed: () {
                  print(divisao());
                  setState(divisao);
                },
                  child: const Text('Divisão',
                    style: TextStyle(fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),

            Text(resp,
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