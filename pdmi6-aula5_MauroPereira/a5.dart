/*    IFSP - Campus Bragança Paulista

        Prog. Dispositivos Móveis

   Mauro Sérgio JAMRL Pereira BP3032116

          Aula 5 - Atividade 5

*/

import 'package:flutter/material.dart';

void main() {
  runApp(LayoutRestricoesApp());
}

//classe LayoutRestricoesApp
//-cria um layout de restrições
class LayoutRestricoesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //-mostra na tela
              _redBox(),
              _redBox(),
              _smallBox(),
              _smallBox(),
              _smallBox(),
              _greenText(),
              _smallBox(),
              _smallBox(),
              _smallBox(),
              _redBox(),
              _redBox(),
            ],
          ),
        ),
      ),
    );
  }
  //-container vermelho de 30x30
  Widget _redBox() {
    return Container(
      width: 30,
      height: 30,
      color: Colors.red,
    );
  }
  //-container verde de 20x20 com um container verde de 10x10 dentro
  Widget _smallBox() {
    return Container(
      width: 20,
      height: 20,
      color: Colors.red,
      child: Center(
        child: Container(
          width: 10,
          height: 10,
          color: Colors.green,
        ),
      ),
    );
  }
  //-container verde com texto "Goodbye!"
  Widget _greenText() {
    return Container(
      color: Colors.green,
      padding: const EdgeInsets.all(4),
      child: Text(
        "Goodbye!",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}




