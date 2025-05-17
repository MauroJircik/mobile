/*
         IFSP - Campus Bragança Paulista

  PDMI6 - Programação para Dispositivos Móveis

            Projeto de AppFlutter
*/

import 'package:flutter/material.dart';
import 'routes/app_routes.dart';
import 'theme/app_theme.dart';

void main() {
  // Inicializa o aplicativo
  runApp(const MyApp());
}

// Classe principal do aplicativo
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // - tema, título e rotas
    return MaterialApp(
      title: 'Flutter Web Project',
      theme: AppTheme.lightTheme,
      initialRoute: '/',
      routes: AppRoutes.routes,
    );
  }
}

/*
Fontes:
Building a shopping cart in Flutter
https://blog.logrocket.com/building-shopping-cart-flutter/

Building a Shopping Cart in Flutter - Flutter Ecommerce App With Firebase
https://www.youtube.com/watch?v=OQFLDI_clBA&list=PL3aehgbHFgW_vgqJzLEa9q9btS8IP1Lsz

Flutter E-commerce App with Firebase
https://codecanyon.net/item/ecommerce-app-flutter-with-firebase/39801306?gad_source=1&gad_campaignid=12562115221&gbraid=0AAAAADgFCsApf9NUG5N4GzFnfTNeduUlW&gclid=Cj0KCQjwlYHBBhD9ARIsALRu09rfjCs7Nka-NATuqa-W8RpQrgpvizbeEb7AWTQ_HRt0Qgu3i_tuQZ4aAn8FEALw_wcB

Grocery Shopping App Flutter
https://www.youtube.com/watch?v=RsJORQhXOIw
https://github.com/Nabinji/ui_design_flutter
*/
