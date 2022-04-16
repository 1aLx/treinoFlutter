import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: SizedBox(
        width: 250,
        height: 250,
        child: Stack(
          textDirection: TextDirection.ltr,
          children: <Widget> [
            Container(
              width: 250,
              height: 250,
              color: Colors.white,
            ),
            Container(
              //Espaçamento entre borda de 5px.
              padding: const EdgeInsets.all(5.0),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color> [
                    Colors.blue.shade900,
                    Colors.lightBlue,
                    Colors.blue,
                  ],
                ),
              ),
              child: Expanded(
                child: FittedBox(
                  fit: BoxFit.contain, //Aumentar o tamanho da imagem.
                  child: Image.network('https://github.com/flutter/plugins/raw/master/packages/video_player/video_player/doc/demo_ipod.gif?raw=true'),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
