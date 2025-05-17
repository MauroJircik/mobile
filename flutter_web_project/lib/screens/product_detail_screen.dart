// Tela 5 - Tela que apresenta um item selecionado

// [RC1] Especifique uma estrutura de pastas (arquitetura) para o projeto do aplicativo.
// [RC2] Utilize Rotas e Navegação, aplicando a técnica com MaterialApp.
// [RC3] Passe dados entre as páginas utilizando as estratégias de Rotas e Navegação.

import 'package:flutter/material.dart';
import 'package:flutter_web_project/widgets/custom_botton_nav.dart';

// Classe ProductDetailScreen
class ProductDetailScreen extends StatefulWidget {
  //- atributos do produto
  final String name;
  final String description;
  final double price;
  final String image;

  //- construtor da classe
  const ProductDetailScreen({
    super.key,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

// Classe ProductDetailScreen
class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        actions: const [Icon(Icons.share_outlined)],
        elevation: 0,
      ),
      //- o corpo da tela:
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          //- a imagem do produto
          Image.asset(widget.image, height: 200, fit: BoxFit.contain),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //- o nome do produto
              Expanded(
                child: Text(
                  widget.name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //- o ícone de favorito
              const Icon(Icons.favorite_border),
            ],
          ),
          const SizedBox(height: 4),
          //- a descrição do produto
          Text(widget.description, style: const TextStyle(color: Colors.grey)),
          const SizedBox(height: 16),
          //- o preço do produto
          Row(
            children: [
              IconButton(
                //- o botão para diminuir a quantidade
                icon: const Icon(Icons.remove_circle_outline),
                onPressed: () {
                  setState(() {
                    if (_quantity > 1) _quantity--;
                  });
                },
              ),
              //- exibe a quantidade atual
              Text('$_quantity', style: const TextStyle(fontSize: 16)),
              IconButton(
                //- o botão para aumentar a quantidade
                icon: const Icon(Icons.add_circle_outline),
                onPressed: () {
                  setState(() {
                    _quantity++;
                  });
                },
              ),
              const Spacer(),
              //- o preço total
              Text(
                '\$${(widget.price * _quantity).toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),

          // menus expansíveis:
          // - os detalhes do produto:
          ExpansionTile(
            //- o título
            title: const Text('Detalhes do Produto'),
            children: const [
              //- os detalhes
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
                child: Text(
                  'Nutrientes: ....',
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            ],
          ),
          const Divider(),
          // - os dados nutricionais do produto:
          ExpansionTile(
            //- o título
            title: const Text('Dados Nutricionais'),
            children: const [
              //- os detalhes
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Chip(label: Text('1.000 g')),
              ),
            ],
          ),
          const Divider(),
          //- o favoritos do produto:
          ListTile(
            //- o título
            title: const Text('Favoritos'),
            //- o ícone de estrela
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('5.0'),
                SizedBox(width: 4),
                Icon(Icons.star, color: Colors.amber),
              ],
            ),
          ),
          const SizedBox(height: 24),
          //- o botão para adicionar ao carrinho
          SizedBox(
            width: double.infinity,
            height: 55,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF53B175),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                // escalabilidade: ação futura de adicionar ao carrinho
              },
              child: const Text('Adicione ao carrinho'),
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
      //- barra de navegação inferior
      bottomNavigationBar: const CustomBottomNav(currentIndex: 1),
    );
  }
}












