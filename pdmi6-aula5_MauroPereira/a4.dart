/*    IFSP - Campus Bragança Paulista

        Prog. Dispositivos Móveis

   Mauro Sérgio JAMRL Pereira BP3032116

          Aula 5 - Atividade 4
*/

import 'package:flutter/material.dart';

void main() {
  runApp(MyResponsiveApp());
}

//classe MyResponsiveApp:
class MyResponsiveApp extends StatelessWidget {
  @override
  //-constrói a tela

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Layouts',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.white, fontSize: 20),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          ),
        ),
      ),
      home: ResponsiveLayout(),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  final List<String> languages = ['Dart', 'JavaScript', 'PHP', 'C++'];
  @override
  //-constrói a tela  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Responsive Layouts")),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            //-modo retrato c/ layout em coluna
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text('Cheetah Coding', style: TextStyle(fontSize: 24)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text('BUTTON 1')),
                    ElevatedButton(onPressed: () {}, child: Text('BUTTON 2')),
                  ],
                ),
                Expanded(
                  child: ListView(
                    children: languages.map((lang) => ListTile(title: Text(lang))).toList(),
                  ),
                )
              ],
            );
          } else {
            //-modo paisagem c/ layout em linha
            return Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text('Cheetah Coding', style: TextStyle(fontSize: 24)),
                      ),
                      ElevatedButton(onPressed: () {}, child: Text('BUTTON 1')),
                      ElevatedButton(onPressed: () {}, child: Text('BUTTON 2')),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: languages.map((lang) => ListTile(title: Text(lang))).toList(),
                  ),
                )
              ],
            );
          }
        },
      ),
    );
  }
}




