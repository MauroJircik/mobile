/*    IFSP - Campus Bragança Paulista

        Prog. Dispositivos Móveis

   Mauro Sérgio JAMRL Pereira BP3032116

          Aula 5 - Atividade 3
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
      title: 'Theme Override Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[200], // fundo da tela
      ),
      home: HomePage(),
    );
  }
}

//classe HomePage:
//-cria tela com um container azul e um container amarelo
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            //-define as características do container(azul)
            width: 100,
            height: 100,
            color: Colors.lightBlueAccent,
            child: Center(
              child: Text(
                'Widget',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Theme(
            data: ThemeData(
              scaffoldBackgroundColor: Colors.grey[400],
              cardColor: Colors.yellow[200],
            ),
            child: Container(
              //-define as características do container(amarelo)
              padding: EdgeInsets.all(16),
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('ThemeData (Sobrescreve)'),
                  SizedBox(height: 10),
                  Container(
                    width: 100,
                    height: 100,
                    color: Theme.of(context).cardColor,
                    child: Center(
                      child: Text('Widget'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




