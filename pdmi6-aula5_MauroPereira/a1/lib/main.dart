/*    IFSP - Campus Bragança Paulista

        Prog. Dispositivos Móveis

   Mauro Sérgio JAMRL Pereira BP3032116

          Aula 5 - Atividade 1

Obs:
- as imagens estão na pasta assets
- o arquivo pubspec.yaml deve ser atualizado para incluir as imagens
*/

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GridScreen(),
  ));
}

//class GridScreen:
//-cria tela com um grid de imagens
class GridScreen extends StatelessWidget {
  final List<Map<String, String>> places = [
    {
      "image": "assets/chennai.jpg",
      "title": "Chennai",
      "subtitle": "Flower Market"
    },
    {
      "image": "assets/tanjore1.jpg",
      "title": "Tanjore",
      "subtitle": "Bronze Works"
    },
    {
      "image": "assets/tanjore2.jpg",
      "title": "Tanjore",
      "subtitle": "Market"
    },
    {
      "image": "assets/temple1.jpg",
      "title": "Tanjore",
      "subtitle": "Thanjavur Temple"
    },
    {
      "image": "assets/temple2.jpg",
      "title": "Tanjore",
      "subtitle": "Thanjavur Temple"
    },
    {
      "image": "assets/pondicherry.jpg",
      "title": "Pondicherry",
      "subtitle": "Salt Farm"
    },
  ];

  @override
  //-constrói a tela
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Places Grid')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          children: places.map((place) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    place["image"]!,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '${place["title"]}\n${place["subtitle"]}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          height: 1.2,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}




