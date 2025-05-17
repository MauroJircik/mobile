

import 'package:flutter_web_project/screens/intro_screen.dart';
import '../screens/welcome_screen.dart';
import '../screens/form_screen.dart';
import '../screens/grid_screen.dart';
import '../screens/cart_screen.dart';

// Rotas para as telas:
class AppRoutes {
  static final routes = {
    // Mapa das rotas para as telas:
    // - rota inicial é a tela de boas-vindas
    '/': (context) => const WelcomeScreen(),
    // - rota da tela de introdução
    '/intro': (context) => const IntroScreen(),
    // - rota da tela de formulário
    '/form': (context) => const FormScreen(),
    // - rota da tela de grade
    '/grid': (context) => const GridScreen(),
    // - rota da tela de carrinho
    '/cart': (context) => const CartScreen(),

  };
}



