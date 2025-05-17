
// Alternancia de tema claro e escuro

import 'package:flutter/material.dart';

// Classe AppTheme
//- define o tema do aplicativo
class AppTheme {
  //- tema claro
  static final lightTheme = ThemeData(
    fontFamily: 'Roboto',
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(fontSize: 16),
      titleLarge: TextStyle(fontWeight: FontWeight.bold),
    ),
    useMaterial3: true,
/*    
    textTheme: const TextTheme(
      bodyMedium: TextStyle(fontSize: 16),
      titleLarge: TextStyle(fontWeight: FontWeight.bold),
    ),
  );

  // - tema escuro
  static final darkTheme = ThemeData(
    fontFamily: 'Roboto',
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepOrange,
      brightness: Brightness.dark,
    ),
    useMaterial3: true,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(fontSize: 16),
      titleLarge: TextStyle(fontWeight: FontWeight.bold),
    ),
*/
  );
}




