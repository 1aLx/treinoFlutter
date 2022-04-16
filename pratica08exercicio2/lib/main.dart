import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: Home()));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const  Icon(Icons.home),
        title: const Text('Home', textDirection: TextDirection.ltr,),
      ),
      body: Center(
        child: Container(
          child: const Text(
          'Olá, Alexandre',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
          ),
          color: Colors.red,
          alignment: Alignment.center,
          width: 200.0,
          height: 100.0,
        ),
      ),
      backgroundColor: Colors.blue[900],
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
