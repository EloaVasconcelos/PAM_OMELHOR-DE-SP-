
import 'package:flutter/material.dart';

// ignore: camel_case_types
class telalogin  extends StatelessWidget {
  const telalogin ({super.key}); // sugestão do flutter

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'O Melhor de SP', // Título na aba
      home: Scaffold(
        body: Stack(), // Chama a tela de restaurantes
      ),
    );
  }
}


