/*    IFSP - Campus Bragança Paulista

        Prog. Dispositivos Móveis

   Mauro Sérgio JAMRL Pereira BP3032116

          Aula 2 - Atividade 1
*/

import 'package:flutter/material.dart';

//função: main
//- criar o aplicativo:
void main() {
  runApp(const MyApp());
}

//classe: MyApp
//- criar o aplicativo:
class MyApp extends StatelessWidget {
  //atributos:
  const MyApp({super.key});

  //método: build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

//classe: MyHomePage
//- criar a tela inicial do aplicativo:
class MyHomePage extends StatelessWidget {
  //atributos:
  const MyHomePage({super.key});

  @override
  //método:
  Widget build(BuildContext context) {
    return Scaffold(
      //criar a estrutura da tela:
      appBar: AppBar(
        title: const Text('Flutter is Fun!'),
        backgroundColor: Colors.green,
      ),
      //criar o cabeçalho da tela:
      body: Center(
        //-criar a tela:
        child: Container(
          padding: const EdgeInsets.all(10),
          color: Colors.red,
          width: 100,
          height: 100,
          child: const Center(
            child: Text(
              'Hi there! 😊',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}



