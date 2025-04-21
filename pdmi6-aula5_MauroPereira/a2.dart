/*    IFSP - Campus Bragança Paulista

        Prog. Dispositivos Móveis

   Mauro Sérgio JAMRL Pereira BP3032116

          Aula 5 - Atividade 2
*/

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//classe MyApp:
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App com ThemeData',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.lightBlueAccent,
      ),
      home: HomePage(),
    );
  }
}

//classe HomePage:
//-cria tela com um container azul
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          //-define as características do container
          width: 100,
          height: 100,
          color: Colors.blue[300],
          child: Center(
            child: Text(
              'Widget',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}




