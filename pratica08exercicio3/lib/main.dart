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
          child: Expanded(
              child: FittedBox(
                fit: BoxFit.contain,
                child: Image.network('https://images.unsplash.com/photo-1547721064-da6cfb341d50')
              ),
          ),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.green,
          ),
          padding: const EdgeInsets.all(100),
          margin: const EdgeInsets.all(1),
        ),
      ),
      backgroundColor: Colors.blue[900],
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}