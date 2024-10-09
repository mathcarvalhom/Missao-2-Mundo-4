import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Explore the World'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Imagem principal a partir do assets
              Image.asset(
                'images/lake.jpg', // Referencia a imagem que foi adicionada
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover, // Ajusta a imagem para cobrir todo o espaço
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Título do local
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Lovatnet Lake',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            SizedBox(width: 4),
                            Text('4.8'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    // Localização
                    Text(
                      'Stryn , Vestland County',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 16),
                    // Botões de ação
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        buildButtonColumn(Icons.call, 'CALL'),
                        buildButtonColumn(Icons.near_me, 'ROUTE'),
                        buildButtonColumn(Icons.share, 'SHARE'),
                      ],
                    ),
                    SizedBox(height: 16),
                    // Descrição
                    Text(
                      'Lovatnet is situated in the western part of Norway, near the village of Loen in Stryn Municipality, surrounded by majestic mountains and steep valleys.'
                      'The lake is positioned at an elevation of approximately 200 meters (656 feet) above sea level, contributing to its breathtaking alpine scenery and serene atmosphere.'
                      'Lovatnet covers an area of about 12 square kilometers (4.6 square miles) and has a maximum depth of approximately 130 meters (427 feet), making it a significant body of water in the region.'
                      'The water temperature in Lovatnet varies seasonally, typically ranging from about 5°C (41°F) in early spring to around 18°C (64°F) during the warmer summer months, making it refreshing for swimming and water activities.'
                      'The lake is popular for various recreational activities, including kayaking, fishing, and hiking along its scenic shores, attracting nature enthusiasts and tourists alike.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Método para construir os botões com ícone e texto
  Column buildButtonColumn(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, color: Colors.blue),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
