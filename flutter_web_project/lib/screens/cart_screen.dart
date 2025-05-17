//Tela 2 - Tela que se adequa ao uso de ListView

// [RC2] Utilize Rotas e Navegação, aplicando a técnica com MaterialApp.

import 'package:flutter/material.dart';
import 'package:flutter_web_project/widgets/custom_botton_nav.dart';
import 'package:flutter_web_project/services/cart_service.dart';


// Classe CartScreen
class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

// Classe CartScreen
class _CartScreenState extends State<CartScreen> {
  //- atributos:
  final cart = CartService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu Carrinho'),
        centerTitle: true,
        elevation: 0,
      ),

      //- exibe a lista de itens do carrinho:
      body:
          cart.isEmpty
              // - se o carrinho estiver vazio, exibe uma mensagem
              ? const Center(
                child: Text(
                  'Seu carrinho está vazio',
                  style: TextStyle(fontSize: 20),
                ),
              )
              // - se o carrinho não estiver vazio, exibe a lista de itens:
              : ListView.builder(
                // - lista de itens do carrinho:
                padding: const EdgeInsets.all(16),
                itemCount: cart.items.length,
                itemBuilder: (context, index) {
                  // - o item do carrinho
                  final item = cart.items[index];
                  // - a quantidade do item
                  final quantity = cart.quantities[index];
                  // - o preço total do item
                  final itemTotal = item['price'] * quantity;

                  // - exibe cada item do carrinho em um Card:
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          // - a imagem do item
                          Image.asset(item['image'], width: 60, height: 60),
                          const SizedBox(width: 12),
                          // - o nome, descrição e preço do item:
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // - o nome do item
                                Text(
                                  item['name'],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                // - a descrição do item
                                Text(
                                  item['desc'],
                                  style: const TextStyle(color: Colors.grey),
                                ),
                                const SizedBox(height: 8),
                                // - a quantidade do item:
                                Row(
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.remove_circle_outline),
                                      onPressed: () {
                                        // - diminui a quantidade
                                        setState(() {
                                          cart.decreaseQty(index);
                                        });
                                      },
                                    ),
                                    // - exibe a quantidade
                                    Text('$quantity', style: const TextStyle(fontSize: 16)),
                                    IconButton(
                                      icon: const Icon(Icons.add_circle_outline), 
                                      onPressed: () {
                                        // - aumenta a quantidade
                                        setState(() {
                                          cart.increaseQty(index);
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              // - o preço total do item
                              Text(
                                '\$${itemTotal.toStringAsFixed(2)}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              // - botão para remover o item do carrinho
                              IconButton(
                                icon: const Icon(Icons.close, size: 20),
                                onPressed: () {
                                  //- remove o item
                                  setState(() => cart.removeItem(index));
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),

      // - exibe o botão de checkout:
      bottomSheet:
          cart.isEmpty
              // - se o carrinho estiver vazio, não exibe
              ? null
              // - se o carrinho não estiver vazio, exibe
              : Container(
                padding: const EdgeInsets.all(16),
                color: Colors.white,
                child: SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF53B175),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    ),
                    onPressed: () {
                      // - rota para a tela de checkout
                      Navigator.pushNamed(context, '/checkout');
                    },
                    child: Text(
                      'Go to Checkout  \$${cart.total.toStringAsFixed(2)}',
                    ),
                  ),
                ),
              ),
      // - exibe a barra de navegação inferior
      bottomNavigationBar: const CustomBottomNav(currentIndex: 2),
    );
  }
}















