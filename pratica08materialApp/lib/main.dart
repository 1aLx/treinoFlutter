import 'package:flutter/material.dart';

//MaterialApp é uma instância da classe MaterialApp é um widget que envolve vários outros widgets que
//são normalmente necessários para aplicativos de design material.

void main() => runApp(const MaterialApp(home : Home()));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Olá mundo!');
  }
}
