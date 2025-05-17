// Tela 4 - Tela que se adequa ao uso de GridView

// [RC1] Especifique uma estrutura de pastas (arquitetura) para o projeto do aplicativo. 
// [RC2] Utilize Rotas e Navegação, aplicando a técnica com MaterialApp.
// [RC3] Passe dados entre as páginas utilizando as estratégias de Rotas e Navegação. 

import 'package:flutter/material.dart';
import 'package:flutter_web_project/widgets/custom_botton_nav.dart';
import '../screens/product_detail_screen.dart';
import 'package:flutter_web_project/services/cart_service.dart';

// Classe GridScreen
class GridScreen extends StatelessWidget {
  const GridScreen({super.key});

  // Lista de produtos, cada um com nome, descrição, preço e imagem
  final List<Map<String, String>> products = const [
    {
      'name': 'Cenoura',
      'desc': '1,0 kg',
      'price': 'R\$1.99',
      'image': 'assets/images/cenoura.png',
    },
    {
      'name': 'Maça',
      'desc': '1,0 kg',
      'price': 'R\$1.50',
      'image': 'assets/images/maca.png',
    },
    {
      'name': 'Tomate',
      'desc': '1,0 kg',
      'price': 'R\$15.99',
      'image': 'assets/images/tomate.png',
    },
    {
      'name': 'Banana',
      'desc': '1,0 kg',
      'price': 'R\$15.99',
      'image': 'assets/images/banana.png',
    },
    {
      'name': 'Mamão',
      'desc': '1,0 kg',
      'price': 'R\$4.99',
      'image': 'assets/images/mamao.png',
    },
    {
      'name': 'Melancia',
      'desc': '1,0 kg',
      'price': 'R\$2.99',
      'image': 'assets/images/melancia.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    // Obtém os argumentos passados pela rota anterior
    final args = ModalRoute.of(context)?.settings.arguments as Map<String, String>?;
    final username = args?['username'] ?? 'Guest';

    final screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = screenWidth > 900 ? 4 : screenWidth > 600 ? 3 : 2;


    return Scaffold(
      appBar: AppBar(
        // Barra de navegação superior
        title: Text('Hi, $username!'),
        centerTitle: true,
        leading: const BackButton(),
        actions: const [Icon(Icons.filter_alt_outlined)],
      ),

      // Corpo da tela
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          // - cria uma grade de produtos
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 3/4,
          ),
          itemBuilder: (context, index) {
            // - cartão de cada produto com imagem, nome, descrição e preço:
            final product = products[index];
            // - o cartão do produto:
            return Container(
              // - o estilo do cartão
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 4,
                    offset: const Offset(2, 2),
                  )
                ],
              ),
              padding: const EdgeInsets.all(12),
              child: Column(
                // - as características do cartão:
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    // - ao tocar na imagem, rota para a tela de detalhes do produto
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          // - passagem dos dados do produto para a tela de detalhes
                          builder: (context) => ProductDetailScreen(
                            name: product['name']!,
                            description: product['desc']!,
                            price: double.parse(
                              product['price']!.replaceAll(RegExp(r'[^\d.]'), ''),
                            ),
                            image: product['image']!,
                          ),
                        ),
                      );
                    },
                    // - a imagem do produto
                    child: Image.asset(
                      product['image']!,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    // - o nome do produto
                    product['name']!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    // - a descrição do produto
                    product['desc']!,
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // - o preço do produto
                      Text(
                        product['price']!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Container(
                        // - botão para adicionar ao carrinho
                        decoration: const BoxDecoration(
                          color: Color(0xFF53B175),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.add, color: Colors.white),
                          onPressed: () {
                            CartService().addItem({
                              'name': product['name'],
                              'desc': product['desc'],
                              'price': double.parse(product['price']!.replaceAll(RegExp(r'[^\d.]'), '')),
                              'image': product['image'],
                            });
                            // - rota para a tela do carrinho
                            Navigator.pushNamed(context, '/cart');
                          },
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
      // - exibe a barra de navegação inferior
      bottomNavigationBar: const CustomBottomNav(currentIndex: 1),
    );
  }
}















