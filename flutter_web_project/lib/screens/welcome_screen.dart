// Tela 1 - Tela de boas-vindas

// [RC1] Especifique uma estrutura de pastas (arquitetura) para o projeto do aplicativo. 
// [RC2] Utilize Rotas e Navegação, aplicando a técnica com MaterialApp.

import 'package:flutter/material.dart';

// Classe WelcomeScreen
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

// Classe de estado para o widget WelcomeScreen
class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();

    // Aguarda 2 segundos antes da próxima tela
    Future.delayed(const Duration(seconds: 2), () {
      // - rota para a tela de introdução
      Navigator.pushReplacementNamed(context, '/intro');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //- a cor de fundo da tela
      backgroundColor: const Color(0xFF53B175),
      //- o corpo da tela do aplicativo:
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //- o logo
            Image.asset('assets/images/carrot.png', width: 80, height: 80),
            const SizedBox(height: 20),
            //- o título
            const Text(
              'nectar',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            //- a descrição
            const Text(
              'online groceriet',
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}





