/*    IFSP - Campus Bragança Paulista

        Prog. Dispositivos Móveis

   Mauro Sérgio JAMRL Pereira BP3032116

          Aula 2 - Atividade 2
*/

import 'package:flutter/material.dart';

//função: main
void main() {
  runApp(const MyApp());
}

//classe: MyApp
//- criar o aplicativo
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
        title: const Text('My Home Page'),
      ),
      //criar o cabeçalho da tela:
      body: Center(
        child: Column(
          //-criar a tela:
          mainAxisAlignment: MainAxisAlignment.center,
          //-alinhamento da tela:
          children: [
            const Text(
              'Hello, World!',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            //criar o botão:
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: const Text('A button'),
            ),
          ],
        ),
      ),
    );
  }
}


