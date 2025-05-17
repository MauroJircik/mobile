// Tela 6 - Tela de introdução

// [RC1] Especifique uma estrutura de pastas (arquitetura) para o projeto do aplicativo.
// [RC2] Utilize Rotas e Navegação, aplicando a técnica com MaterialApp.
// [RC5] Utilize a classe LayoutBuilder ou MediaQuery para tornar o aplicativo responsivo à rotação de tela.

import 'package:flutter/material.dart';

// Classe IntroScreen
class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isWide = size.width > 600;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // - a imagem do fundo da tela
          Image.asset(
            'assets/images/delivery_background.png',
            fit: BoxFit.cover,
          ),
          Container(color: Colors.black.withOpacity(0.5)),

          // - o conteúdo da tela:
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // - o logo
                Image.asset('assets/images/carrot.png', width: 48, height: 48),
                const SizedBox(height: 20),
                // - o título
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: isWide ? 36 : 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Text(
                  'to our store',
                  style: TextStyle(
                    fontSize: isWide ? 36 : 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                // - a descrição
                Text(
                  'Get your groceries in as fast as one hour',
                  style: TextStyle(
                    fontSize: isWide ? 18 : 14,
                    color: Colors.white70,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                // - o botão para iniciar:
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    // - o estilo
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF53B175),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    onPressed: () {
                      // - rota para a tela de formulário
                      Navigator.pushNamed(context, '/form');
                    },
                    // - o texto
                    child: const Text(
                      'Get started',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}





